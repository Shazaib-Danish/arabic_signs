import 'package:flutter/material.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_video_player.dart';

class RecordViedoWidget extends StatefulWidget {
  const RecordViedoWidget({Key key}) : super(key: key);

  @override
  _RecordViedoWidgetState createState() => _RecordViedoWidgetState();
}

class _RecordViedoWidgetState extends State<RecordViedoWidget> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xDC061E47),
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.close,
          color: FlutterFlowTheme.tertiaryColor,
          size: 25,
        ),
        title: Align(
          alignment: AlignmentDirectional(0.7, 0),
          child: Text(
            'تعليمات التسجيل',
            style: FlutterFlowTheme.title2.override(
              fontFamily: 'Poppins',
              color: Colors.white,
            ),
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFBCBEC4),
      body: SingleChildScrollView(
        child: Align(
          alignment: AlignmentDirectional(0.3, 0.25),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/pexels-shvets-production-7516578.jpg',
                ).image,
              ),
              borderRadius: BorderRadius.circular(0),
            ),
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                        child: Container(
                          width: 350,
                          height: 630,
                          decoration: BoxDecoration(
                            color: Color(0x90EEEEEE),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(-0.05, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.65, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Text(
                              ':إتبع التعليمات التالية',
                              textAlign: TextAlign.end,
                              style: FlutterFlowTheme.title3,
                            ),
                          ),
                        ),
                        Text(
                          '',
                          textAlign: TextAlign.end,
                          style: FlutterFlowTheme.bodyText1,
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                            child: FlutterFlowVideoPlayer(
                              path:
                                  'https://assets.mixkit.co/videos/preview/mixkit-forest-stream-in-the-sunlight-529-large.mp4',
                              videoType: VideoType.network,
                              width: MediaQuery.of(context).size.width * 0.8,
                              autoPlay: false,
                              looping: true,
                              showControls: true,
                              allowFullScreen: true,
                              allowPlaybackSpeedMenu: false,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
