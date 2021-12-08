import 'package:arabic_lan/backend/firebase.dart';

import '../dashboard/dashboard_widget.dart';
import '../flutter_flow/flutter_flow_count_controller.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../profile/profile_widget.dart';
import '../wallet/wallet_widget.dart';
import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:arabic_lan/main.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class RcordingWidget extends StatefulWidget {
  const RcordingWidget({Key key}) : super(key: key);

  @override
  _RcordingWidgetState createState() => _RcordingWidgetState();
}

class _RcordingWidgetState extends State {
  bool _loadingButton3 = false;
  bool _loadingButton4 = false;
  bool _loadingButton5 = false;
  bool _loadingButton6 = false;
  int countControllerValue;
  List<String> words = [];
  String arabicWord = "Wait";
  int selectedIndex = 0;
  String showWords = "";

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    loop();
    initCamera();
    classifyImage();

    super.initState();
  }

  @override
  void dispose() async {
    _cameraController?.dispose();
    super.dispose();
  }

  bool _loadingButton1 = false;
  bool _loadingButton2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Color(0xAF061E47),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/Picture11.jpg',
                  ).image,
                ),
              ),
              alignment: AlignmentDirectional(-0.4, -0.44999999999999996),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.88,
                      decoration: BoxDecoration(),
                      child: DefaultTabController(
                        length: 2,
                        initialIndex: 0,
                        child: Column(
                          children: [
                            TabBar(
                              labelColor: FlutterFlowTheme.tertiaryColor,
                              labelStyle: FlutterFlowTheme.title2,
                              indicatorColor: FlutterFlowTheme.secondaryColor,
                              tabs: [
                                Tab(
                                  text: 'التسجيل اليدوي',
                                ),
                                Tab(
                                  text: 'التسجيل المستمر',
                                )
                              ],
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  // altasjeel yadvi screen
                                  SingleChildScrollView(
                                    controller: ScrollController(),
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 5, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(3, 0, 2, 0),
                                                child: FFButtonWidget(
                                                  onPressed: () {
                                                    if (selectedIndex ==
                                                        words.length - 1) {
                                                      selectedIndex = 0;
                                                    } else {
                                                      selectedIndex++;
                                                    }
                                                    setState(() {
                                                      arabicWord =
                                                          words[selectedIndex];
                                                    });
                                                  },
                                                  text: 'التالي',
                                                  options: FFButtonOptions(
                                                    width: 80,
                                                    height: 50,
                                                    color: FlutterFlowTheme
                                                        .primaryColor,
                                                    textStyle: FlutterFlowTheme
                                                        .subtitle2
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      color: Colors.white,
                                                    ),
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                    borderRadius: 12,
                                                  ),
                                                  loading: _loadingButton1,
                                                ),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.55,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: Color(0x76FFFFFF),
                                                  shape: BoxShape.rectangle,
                                                ),
                                                child: ListView(
                                                  padding: EdgeInsets.zero,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 5, 0, 0),
                                                      child: Text(
                                                        arabicWord,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                            .title3
                                                            .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                              .secondaryColor,
                                                          fontSize: 25,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 5, 0, 0),
                                                      child: Text(
                                                        'السلام عليكم ',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                            .title3
                                                            .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                              .secondaryColor,
                                                          fontSize: 25,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 5, 0, 0),
                                                      child: Text(
                                                        'عمل',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                            .title3
                                                            .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                              .secondaryColor,
                                                          fontSize: 25,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(2, 0, 0, 0),
                                                child: FFButtonWidget(
                                                  onPressed: () {
                                                    if (selectedIndex == 0) {
                                                      selectedIndex =
                                                          words.length - 1;
                                                    } else {
                                                      selectedIndex--;
                                                    }
                                                    setState(() {
                                                      arabicWord =
                                                          words[selectedIndex];
                                                    });
                                                  },
                                                  text: 'السابق ',
                                                  options: FFButtonOptions(
                                                    width: 70,
                                                    height: 50,
                                                    color: FlutterFlowTheme
                                                        .primaryColor,
                                                    textStyle: FlutterFlowTheme
                                                        .subtitle2
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      color: Colors.white,
                                                    ),
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                    borderRadius: 12,
                                                  ),
                                                  loading: _loadingButton2,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        ////////////////////////////////////////////////////////////////////////

                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.76,
                                          decoration: BoxDecoration(),
                                          child: Camera(),
                                        )
                                      ],
                                    ),
                                  ),
                                  // altasjeel mustamar screen
                                  SingleChildScrollView(
                                    controller: ScrollController(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 70,
                                          decoration: BoxDecoration(
                                            color: Color(0xA0EEEEEE),
                                          ),
                                          // adadul kalmmat
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 0, 0, 0),
                                                  child: Container(
                                                    width: 150,
                                                    height: 50,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xF7061E47),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                      shape: BoxShape.rectangle,
                                                      border: Border.all(
                                                        color:
                                                            Color(0xFF9E9E9E),
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child:
                                                        FlutterFlowCountController(
                                                      decrementIconBuilder:
                                                          (enabled) => FaIcon(
                                                        FontAwesomeIcons.minus,
                                                        color: enabled
                                                            ? FlutterFlowTheme
                                                                .tertiaryColor
                                                            : FlutterFlowTheme
                                                                .tertiaryColor,
                                                        size: 20,
                                                      ),
                                                      incrementIconBuilder:
                                                          (enabled) => FaIcon(
                                                        FontAwesomeIcons.plus,
                                                        color: enabled
                                                            ? FlutterFlowTheme
                                                                .secondaryColor
                                                            : FlutterFlowTheme
                                                                .tertiaryColor,
                                                        size: 20,
                                                      ),
                                                      countBuilder: (count) =>
                                                          Text(
                                                        count.toString(),
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Roboto',
                                                          color: FlutterFlowTheme
                                                              .tertiaryColor,
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                      count:
                                                          countControllerValue ??=
                                                              0,
                                                      updateCount: (count) =>
                                                          setState(() =>
                                                              countControllerValue =
                                                                  count),
                                                      stepSize: 1,
                                                      minimum: 0,
                                                      maximum: words != null
                                                          ? words.length
                                                          : 10,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.15, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                60, 0, 0, 0),
                                                    child: Text(
                                                      'عدد الكلمات ',
                                                      textAlign: TextAlign.end,
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          color: Colors.white.withOpacity(0.6),
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 50,
                                          child: MaterialButton(
                                            onPressed: () {
                                              setState(() {
                                                showWords =
                                                    words[countControllerValue];
                                              });
                                            },
                                            child: Text(
                                              "إرسال ",
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          color: Colors.amber,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 50,
                                          child: Center(
                                            child: Text(
                                              countControllerValue > 0
                                                  ? showWords
                                                  : "تظهر الكلمات المختارة هنا",
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 600,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Camera(),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Bottm naviagation button
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0, 1),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0x4A061E47),
                        ),
                        alignment: AlignmentDirectional(0, 1),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(-0.6, 0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    setState(() => _loadingButton3 = true);
                                    try {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              DashboardWidget(),
                                        ),
                                      );
                                    } finally {
                                      setState(() => _loadingButton3 = false);
                                    }
                                  },
                                  text: '',
                                  icon: Icon(
                                    Icons.home,
                                    size: 25,
                                  ),
                                  options: FFButtonOptions(
                                    width: 80,
                                    height: 50,
                                    color: Color(0x00FBBE28),
                                    textStyle:
                                        FlutterFlowTheme.subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: 12,
                                  ),
                                  loading: _loadingButton3,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    setState(() => _loadingButton4 = true);
                                    try {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              RcordingWidget(),
                                        ),
                                      );
                                    } finally {
                                      setState(() => _loadingButton4 = false);
                                    }
                                  },
                                  text: '',
                                  icon: Icon(
                                    Icons.video_call,
                                    size: 25,
                                  ),
                                  options: FFButtonOptions(
                                    width: 80,
                                    height: 50,
                                    color: Color(0xFFFBBE28),
                                    textStyle:
                                        FlutterFlowTheme.subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: 12,
                                  ),
                                  loading: _loadingButton4,
                                ),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                setState(() => _loadingButton5 = true);
                                try {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => WalletWidget(),
                                    ),
                                  );
                                } finally {
                                  setState(() => _loadingButton5 = false);
                                }
                              },
                              text: '',
                              icon: Icon(
                                Icons.account_balance_wallet,
                                size: 25,
                              ),
                              options: FFButtonOptions(
                                width: 80,
                                height: 50,
                                color: Color(0x003474E0),
                                textStyle: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: 12,
                              ),
                              loading: _loadingButton5,
                            ),
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(0.6, 0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    setState(() => _loadingButton6 = true);
                                    try {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                          reverseDuration:
                                              Duration(milliseconds: 0),
                                          child: ProfileWidget(),
                                        ),
                                      );
                                    } finally {
                                      setState(() => _loadingButton6 = false);
                                    }
                                  },
                                  text: '',
                                  icon: Icon(
                                    Icons.location_history,
                                    size: 25,
                                  ),
                                  options: FFButtonOptions(
                                    width: 80,
                                    height: 50,
                                    color: Color(0x003474E0),
                                    textStyle:
                                        FlutterFlowTheme.subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: 12,
                                  ),
                                  loading: _loadingButton6,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void loop() async {
    words = await getWords();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Video uploaded  With Size " + words.length.toString(),
        ),
      ),
    );
    arabicWord = words[selectedIndex];
    setState(() {});
  }

  void recordingEnd() async {
    XFile videopath = await _cameraController.stopVideoRecording();
    setState(() {
      isRecoring = false;
      if (countControllerValue > 0) {
        countControllerValue--;
        showWords = words[countControllerValue];
      }
      endTime = 0;
      showMyDialog(File(videopath.path));
    });
    setState(() {});
  }

  showMyDialog(File file) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'حوار التنبيه',
            textAlign: TextAlign.end,
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('هل ترغب في الرفع؟', textAlign: TextAlign.end),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('إلغاء'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('تحميل'),
              onPressed: () {
                uploadToStorage(file, context);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget Camera() {
    return Stack(
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
    );
  }

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
}
