import 'package:arabic_lan/dashboard/charts.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../profile/profile_widget.dart';
import '../rcording/rcording_widget.dart';
import 'package:flutter/material.dart';


class DashboardWidget extends StatefulWidget {
  const DashboardWidget({Key key}) : super(key: key);

  @override
  _DashboardWidgetState createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  bool _loadingButton3 = false;
  bool _loadingButton4 = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                color: Color(0xAF061E47),
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: Image.asset(
                    'assets/images/pexels-shvets-production-7516578.jpg',
                  ).image,
                ),
              ),
              alignment: AlignmentDirectional(-0.4, -0.44999999999999996),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, -0.1),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0x7BA6A4A4),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.09, -0.63),
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/MicrosoftTeams-image_(28).png',
                                ).image,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.08, 0.2),
                          child: Text(
                            'معًا لتسهيل التواصل عن طريق لغة الإشارة',
                            style: FlutterFlowTheme.title3.override(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Expanded(
                      flex: 3,
                      child:
                      MyHomePage()),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: AlignmentDirectional(0, 1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
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
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: '',
                                    icon: Icon(
                                      Icons.home,
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
                                    loading: _loadingButton1,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      setState(() => _loadingButton2 = true);
                                      try {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                RcordingWidget(),
                                          ),
                                        );
                                      } finally {
                                        setState(() => _loadingButton2 = false);
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
                                      color: Color(0x00A6A4A4),
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
                                    loading: _loadingButton2,
                                  ),
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
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
                                loading: _loadingButton3,
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(0.6, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      setState(() => _loadingButton4 = true);
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
                                        setState(() => _loadingButton4 = false);
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
                                    loading: _loadingButton4,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
