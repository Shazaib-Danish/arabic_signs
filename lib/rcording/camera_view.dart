import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:arabic_lan/main.dart';
import 'package:arabic_lan/rcording/video_view.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';

class CameraScreen extends StatefulWidget {
  CameraScreen({Key key}) : super(key: key);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController _cameraController;
  CameraImage cameraImage;
  Future<void> cameraValue;
  bool isRecoring = false;
  bool flash = false;
  bool iscamerafront = true;
  bool isworking = false;
  double transform = 0;
  String result = "data";
  int endTime = 0;
  initCamera() {
    _cameraController = CameraController(cameras[1], ResolutionPreset.high);
    cameraValue = _cameraController.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {
        _cameraController.startImageStream((image) {
          if (!isworking) {
            isworking = true;
            cameraImage = image;
            runModelOnFrameStream();
          }
        });
      });
    });
  }

  Timer periodicTimer;
  void startcoundown() {
    periodicTimer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(() {
          if (endTime > 0) {
            endTime--;
          } else {
            periodicTimer.cancel();
            recordingEnd();
          }
        });
      },
    );
  }

  runModelOnFrameStream() async {
    if (cameraImage != null) {
      var recoganization = await Tflite.runModelOnFrame(
        bytesList: cameraImage.planes.map((e) => e.bytes).toList(),
        imageHeight: cameraImage.height,
        imageWidth: cameraImage.width,
        imageMean: 127.5,
        imageStd: 127.5,
        rotation: 90,
        numResults: 2,
        threshold: 0.1,
      );
      result = "";
      recoganization.forEach((element) {
        result += element["label"] +
            (element["confidence"] * 100 as double).toStringAsFixed(0) +
            "%\n\n";
      });
      setState(() {
        result;
      });
      isworking = false;
    }
  }

  classifyImage() async {
    await Tflite.loadModel(
        model: "assets/mobilenet_v1_1.0_224.tflite",
        labels: "assets/mobilenet_v1_1.0_224.txt");
  }

  @override
  void initState() {
    super.initState();
    initCamera();
    classifyImage();
  }

  @override
  void dispose() {
    super.dispose();

    _cameraController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder(
              future: cameraValue,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: CameraPreview(_cameraController));
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }),
          Positioned(
              right: 20,
              top: 20,
              child: Text(
                result,
                style: TextStyle(color: Colors.blueAccent),
              )),
          Positioned(
              left: 20,
              top: 20,
              child: Text(
                endTime.toString(),
                style: TextStyle(color: Colors.blueAccent),
              )),
          Positioned(
            bottom: 0.0,
            child: Container(
              color: Colors.black,
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          icon: Icon(
                            flash ? Icons.flash_on : Icons.flash_off,
                            color: Colors.white,
                            size: 28,
                          ),
                          onPressed: () {
                            setState(() {
                              if (!flash) {
                                _cameraController.setFlashMode(FlashMode.torch);
                                flash = true;
                              } else {
                                _cameraController.setFlashMode(FlashMode.off);
                                flash = false;
                              }
                            });
                          }),
                      GestureDetector(
                        onTap: () async {
                          if (!isRecoring) {
                            _cameraController.stopImageStream();
                            await _cameraController.startVideoRecording();
                            setState(() {
                              isRecoring = true;
                              endTime = 30;
                              startcoundown();
                            });
                          } else {
                            recordingEnd();
                          }
                        },
                        child: isRecoring
                            ? const Icon(
                                Icons.radio_button_on,
                                color: Colors.red,
                                size: 80,
                              )
                            : const Icon(
                                Icons.panorama_fish_eye,
                                color: Colors.white,
                                size: 70,
                              ),
                      ),
                      IconButton(
                          icon: Transform.rotate(
                            angle: transform,
                            child: const Icon(
                              Icons.flip_camera_ios,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                          onPressed: () async {
                            int cameraPos;
                            setState(() {
                              if (iscamerafront) {
                                iscamerafront = false;
                                cameraPos = 0;
                              } else {
                                iscamerafront = true;
                                cameraPos = 1;
                              }

                              transform = transform + pi;
                            });

                            _cameraController = CameraController(
                                cameras[cameraPos], ResolutionPreset.high);
                            cameraValue = _cameraController.initialize();
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    "Tap for Video Recording",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void recordingEnd() async {
    XFile videopath = await _cameraController.stopVideoRecording();
    setState(() {
      isRecoring = false;
    });
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (builder) => VideoViewPage(
                  file: File(videopath.path),
                )));
  }
}
