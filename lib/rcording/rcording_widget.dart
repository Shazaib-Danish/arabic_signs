import 'package:arabic_lan/backend/firebase.dart';
import 'package:arabic_lan/rcording/camera_view.dart';

import '../dashboard/dashboard_widget.dart';
import '../flutter_flow/flutter_flow_count_controller.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../profile/profile_widget.dart';
import '../wallet/wallet_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class RcordingWidget extends StatefulWidget {
  const RcordingWidget({Key key}) : super(key: key);

  @override
  _RcordingWidgetState createState() => _RcordingWidgetState();
}

class _RcordingWidgetState extends State<RcordingWidget>
    with SingleTickerProviderStateMixin {
  bool _loadingButton3 = false;
  bool _loadingButton4 = false;
  bool _loadingButton5 = false;
  bool _loadingButton6 = false;
  int countControllerValue;
  TabController _tabController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    loop();
    _tabController = TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  void dispose() async {
    _tabController.dispose();
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
                              controller: _tabController,
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
                                controller: _tabController,
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
                                                    print('Next pressed ...');
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
                                                        'تعاون',
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
                                                    print('prev pressed ...');
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
                                        Column(
                                          children: wordsWidget.length > 0
                                              ? wordsWidget
                                              : indicator,
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.76,
                                          decoration: BoxDecoration(),
                                          child: Stack(
                                            children: [],
                                          ),
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
                                                              3,
                                                      updateCount: (count) =>
                                                          setState(() =>
                                                              countControllerValue =
                                                                  count),
                                                      stepSize: 1,
                                                      minimum: 1,
                                                      maximum: 10,
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
                                        SizedBox(
                                          height: 600,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: CameraScreen(),
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

  List<Widget> wordsWidget = [];
  List<Widget> indicator = [
    CircularProgressIndicator(),
  ];
  void loop() async {
    List<String> words = await getWords();
    for (int i = 0; i < words.length; i++) {
      wordsWidget.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            _tabController.animateTo((_tabController.index + 1) % 2);
          },
          child: Text(
            words[i],
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.w900),
          ),
        ),
      ));
    }
    setState(() {});
  }
}
