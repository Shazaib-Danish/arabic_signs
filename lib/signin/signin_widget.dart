import 'package:arabic_lan/phone_authen/phone_authen_widget.dart';

import '../auth/auth_util.dart';
import '../dashboard/dashboard_widget.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../forget_pass/forget_pass_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninWidget extends StatefulWidget {
  const SigninWidget({Key key}) : super(key: key);

  @override
  _SigninWidgetState createState() => _SigninWidgetState();
}

class _SigninWidgetState extends State<SigninWidget> {
  String radioButtonValue;
  TextEditingController firstNameController;
  TextEditingController textController2;
  TextEditingController signUpEmailController;
  TextEditingController phoneNumberController;
  TextEditingController signUpPassController;
  bool signUpPassVisibility;
  TextEditingController signUpPass2Controller;
  bool signUpPass2Visibility;
  bool _loadingButton4 = false;
  TextEditingController signEmailController;
  TextEditingController signPassController;
  bool signPassVisibility;
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  bool _loadingButton3 = false;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    firstNameController = TextEditingController();
    textController2 = TextEditingController();
    signUpEmailController = TextEditingController();
    phoneNumberController = TextEditingController();
    signUpPassController = TextEditingController();
    signUpPassVisibility = false;
    signUpPass2Controller = TextEditingController();
    signUpPass2Visibility = false;
    signEmailController = TextEditingController();
    signPassController = TextEditingController();
    signPassVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF14181B),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: Color(0xFFCBCACA),
            image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: Image.asset(
                'assets/images/pexels-shvets-production-7516578.jpg',
              ).image,
            ),
            shape: BoxShape.rectangle,
          ),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, -8.04),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, -0.55),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 2),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 25),
                                child: Image.asset(
                                  'assets/images/MicrosoftTeams-image_(28).png',
                                  width: 200,
                                  height: 150,
                                  fit: BoxFit.fitHeight,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: DefaultTabController(
                            length: 2,
                            initialIndex: 0,
                            child: Column(
                              children: [
                                TabBar(
                                  labelColor: FlutterFlowTheme.secondaryColor,
                                  unselectedLabelColor: Colors.black,
                                  labelStyle: GoogleFonts.getFont(
                                    'Roboto',
                                  ),
                                  indicatorColor: FlutterFlowTheme.secondaryColor,
                                  tabs: [
                                    Tab(
                                      text: 'تسجيل الدخول',
                                    ),
                                    Tab(
                                      text: 'التسجيل',
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: TabBarView(
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding:
                                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                                child: TextFormField(
                                                  onChanged: (_) => setState(() {}),
                                                  controller: signEmailController,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'البريد الإلكتروني',
                                                    labelStyle: FlutterFlowTheme.bodyText1.override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFFA5ABAE),
                                                    ),
                                                    enabledBorder: UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    focusedBorder: UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                        20, 24, 20, 0),
                                                    suffixIcon: signEmailController.text.isNotEmpty
                                                        ? InkWell(
                                                      onTap: () => setState(
                                                            () => signEmailController.clear(),
                                                      ),
                                                      child: Icon(
                                                        Icons.clear,
                                                        color: Color(0xFF757575),
                                                        size: 20,
                                                      ),
                                                    )
                                                        : null,
                                                  ),
                                                  style: FlutterFlowTheme.bodyText1.override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFFA5ABAE),
                                                  ),
                                                  textAlign: TextAlign.end,
                                                  keyboardType: TextInputType.emailAddress,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                child: TextFormField(
                                                  controller: signPassController,
                                                  obscureText: !signPassVisibility,
                                                  decoration: InputDecoration(
                                                    labelText: 'الرقم السري',
                                                    labelStyle: FlutterFlowTheme.bodyText1.override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFFA5ABAE),
                                                    ),
                                                    enabledBorder: UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    focusedBorder: UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                        20, 24, 20, 0),
                                                    suffixIcon: InkWell(
                                                      onTap: () => setState(
                                                            () => signPassVisibility =
                                                        !signPassVisibility,
                                                      ),
                                                      child: Icon(
                                                        signPassVisibility
                                                            ? Icons.visibility_outlined
                                                            : Icons.visibility_off_outlined,
                                                        color: Color(0xFF757575),
                                                        size: 20,
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.bodyText1.override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFFA5ABAE),
                                                  ),
                                                  textAlign: TextAlign.end,
                                                  keyboardType: TextInputType.visiblePassword,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    setState(() => _loadingButton1 = true);
                                                    try {
                                                      final user = await signInWithEmail(
                                                        context,
                                                        signEmailController.text,
                                                        signPassController.text,
                                                      );
                                                      if (user == null) {
                                                        return;
                                                      }

                                                      await Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) => DashboardWidget(),
                                                        ),
                                                      );
                                                    } finally {
                                                      setState(() => _loadingButton1 = false);
                                                    }
                                                  },
                                                  text: 'تسجيل الدخول',
                                                  options: FFButtonOptions(
                                                    width: 230,
                                                    height: 60,
                                                    color: Colors.white,
                                                    textStyle: FlutterFlowTheme.subtitle2.override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF004D40),
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal,
                                                    ),
                                                    elevation: 3,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                    borderRadius: 8,
                                                  ),
                                                  loading: _loadingButton1,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    setState(() => _loadingButton2 = true);
                                                    try {
                                                      await Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) => ForgetPassWidget(),
                                                        ),
                                                      );
                                                    } finally {
                                                      setState(() => _loadingButton2 = false);
                                                    }
                                                  },
                                                  text: 'هل نسيت الرقم السري؟',
                                                  options: FFButtonOptions(
                                                    width: 170,
                                                    height: 40,
                                                    color: Color(0x0039D2C0),
                                                    textStyle: FlutterFlowTheme.subtitle2.override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal,
                                                    ),
                                                    elevation: 0,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                    borderRadius: 8,
                                                  ),
                                                  loading: _loadingButton2,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      child: Align(
                                                        alignment: AlignmentDirectional(0, -0.4),
                                                        child: Padding(
                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                              0, 0, 0, 15),
                                                          child: Text(
                                                            'او سجل الدخول',
                                                            style:
                                                            FlutterFlowTheme.bodyText1.override(
                                                              fontFamily: 'Lexend Deca',
                                                              color: Color(0x98FFFFFF),
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.normal,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(0, 0.5),
                                                child: Container(
                                                  width: 300,
                                                  height: 44,
                                                  child: Stack(
                                                    alignment: AlignmentDirectional(
                                                        0, -0.050000000000000044),
                                                    children: [
                                                      Align(
                                                        alignment: AlignmentDirectional(0, 0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            setState(() => _loadingButton3 = true);
                                                            try {
                                                              final user =
                                                              await signInWithGoogle(context);
                                                              if (user == null) {
                                                                return;
                                                              }
                                                              await Navigator.pushAndRemoveUntil(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder: (context) =>
                                                                      SigninWidget(),
                                                                ),
                                                                    (r) => false,
                                                              );
                                                            } finally {
                                                              setState(
                                                                      () => _loadingButton3 = false);
                                                            }
                                                          },
                                                          text: 'باستخدام حسابك على Google',
                                                          icon: Icon(
                                                            Icons.add,
                                                            color: Colors.transparent,
                                                            size: 20,
                                                          ),
                                                          options: FFButtonOptions(
                                                            width: 300,
                                                            height: 44,
                                                            color: Colors.white,
                                                            textStyle: GoogleFonts.getFont(
                                                              'Roboto',
                                                              color: Color(0xFF606060),
                                                              fontSize: 17,
                                                            ),
                                                            elevation: 4,
                                                            borderSide: BorderSide(
                                                              color: Colors.transparent,
                                                              width: 0,
                                                            ),
                                                            borderRadius: 12,
                                                          ),
                                                          loading: _loadingButton3,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment: AlignmentDirectional(-0.83, 0),
                                                        child: Container(
                                                          width: 22,
                                                          height: 22,
                                                          clipBehavior: Clip.antiAlias,
                                                          decoration: BoxDecoration(
                                                            shape: BoxShape.circle,
                                                          ),
                                                          child: Image.network(
                                                            'https://i0.wp.com/nanophorm.com/wp-content/uploads/2018/04/google-logo-icon-PNG-Transparent-Background.png?w=1000&ssl=1',
                                                            fit: BoxFit.contain,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding:
                                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                                child: TextFormField(
                                                  onChanged: (_) => setState(() {}),
                                                  controller: firstNameController,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'الاسم الأول',
                                                    labelStyle: FlutterFlowTheme.bodyText1.override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFFA5ABAE),
                                                    ),
                                                    enabledBorder: UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    focusedBorder: UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                        20, 24, 20, 0),
                                                    suffixIcon: firstNameController.text.isNotEmpty
                                                        ? InkWell(
                                                      onTap: () => setState(
                                                            () => firstNameController.clear(),
                                                      ),
                                                      child: Icon(
                                                        Icons.clear,
                                                        color: Color(0xFF757575),
                                                        size: 20,
                                                      ),
                                                    )
                                                        : null,
                                                  ),
                                                  style: FlutterFlowTheme.bodyText1.override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFFA5ABAE),
                                                  ),
                                                  textAlign: TextAlign.end,
                                                  keyboardType: TextInputType.name,
                                                  validator: (val) {
                                                    if (val.isEmpty) {
                                                      return 'ادخل الاسم الأول';
                                                    }

                                                    return null;
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                child: TextFormField(
                                                  onChanged: (_) => setState(() {}),
                                                  controller: textController2,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'اسم العائلة',
                                                    labelStyle: FlutterFlowTheme.bodyText1.override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFFA5ABAE),
                                                    ),
                                                    enabledBorder: UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    focusedBorder: UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                        20, 24, 20, 0),
                                                    suffixIcon: textController2.text.isNotEmpty
                                                        ? InkWell(
                                                      onTap: () => setState(
                                                            () => textController2.clear(),
                                                      ),
                                                      child: Icon(
                                                        Icons.clear,
                                                        color: Color(0xFF757575),
                                                        size: 20,
                                                      ),
                                                    )
                                                        : null,
                                                  ),
                                                  style: FlutterFlowTheme.bodyText1.override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFFA5ABAE),
                                                  ),
                                                  textAlign: TextAlign.end,
                                                  keyboardType: TextInputType.name,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                child: TextFormField(
                                                  onChanged: (_) => setState(() {}),
                                                  controller: signUpEmailController,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'البريد الإلكتروني',
                                                    labelStyle: FlutterFlowTheme.bodyText1.override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFFA5ABAE),
                                                    ),
                                                    enabledBorder: UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    focusedBorder: UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                        20, 24, 20, 0),
                                                    suffixIcon: signUpEmailController
                                                        .text.isNotEmpty
                                                        ? InkWell(
                                                      onTap: () => setState(
                                                            () => signUpEmailController.clear(),
                                                      ),
                                                      child: Icon(
                                                        Icons.clear,
                                                        color: Color(0xFF757575),
                                                        size: 22,
                                                      ),
                                                    )
                                                        : null,
                                                  ),
                                                  style: FlutterFlowTheme.bodyText1.override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFFA5ABAE),
                                                  ),
                                                  textAlign: TextAlign.end,
                                                  keyboardType: TextInputType.emailAddress,
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(0, -0.2),
                                                child: Padding(
                                                  padding:
                                                  EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                  child: TextFormField(
                                                    onChanged: (_) => setState(() {}),
                                                    controller: phoneNumberController,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'رقم الجوال',
                                                      labelStyle:
                                                      FlutterFlowTheme.bodyText1.override(
                                                        fontFamily: 'Poppins',
                                                        color: Color(0xFFA5ABAE),
                                                      ),
                                                      enabledBorder: UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius: BorderRadius.circular(8),
                                                      ),
                                                      focusedBorder: UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius: BorderRadius.circular(8),
                                                      ),
                                                      filled: true,
                                                      fillColor: Colors.white,
                                                      contentPadding:
                                                      EdgeInsetsDirectional.fromSTEB(
                                                          20, 24, 20, 0),
                                                      suffixIcon: phoneNumberController
                                                          .text.isNotEmpty
                                                          ? InkWell(
                                                        onTap: () => setState(
                                                              () => phoneNumberController.clear(),
                                                        ),
                                                        child: Icon(
                                                          Icons.clear,
                                                          color: Color(0xFF757575),
                                                          size: 20,
                                                        ),
                                                      )
                                                          : null,
                                                    ),
                                                    style: FlutterFlowTheme.bodyText1.override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFFA5ABAE),
                                                    ),
                                                    textAlign: TextAlign.end,
                                                    keyboardType: TextInputType.phone,
                                                    validator: (val) {
                                                      if (val.isEmpty) {
                                                        return 'أدخل رقم الجوال';
                                                      }
                                                      if (val.length < 10) {
                                                        return 'Requires at least 10 characters.';
                                                      }
                                                      return null;
                                                    },
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                child: TextFormField(
                                                  controller: signUpPassController,
                                                  obscureText: !signUpPassVisibility,
                                                  decoration: InputDecoration(
                                                    labelText: 'كلمة المرور',
                                                    labelStyle: FlutterFlowTheme.bodyText1.override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFFA5ABAE),
                                                    ),
                                                    enabledBorder: UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    focusedBorder: UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                        20, 24, 20, 0),
                                                    suffixIcon: InkWell(
                                                      onTap: () => setState(
                                                            () => signUpPassVisibility =
                                                        !signUpPassVisibility,
                                                      ),
                                                      child: Icon(
                                                        signUpPassVisibility
                                                            ? Icons.visibility_outlined
                                                            : Icons.visibility_off_outlined,
                                                        color: Color(0xFF757575),
                                                        size: 20,
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.bodyText1.override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFFA5ABAE),
                                                  ),
                                                  textAlign: TextAlign.end,
                                                  keyboardType: TextInputType.visiblePassword,
                                                  validator: (val) {
                                                    if (val.isEmpty) {
                                                      return 'إدخال كلمة المرور';
                                                    }
                                                    if (val.length < 8) {
                                                      return 'Requires at least 8 characters.';
                                                    }
                                                    return null;
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                child: TextFormField(
                                                  controller: signUpPass2Controller,
                                                  obscureText: !signUpPass2Visibility,
                                                  decoration: InputDecoration(
                                                    labelText: 'تأكيد كلمة المرور',
                                                    labelStyle: FlutterFlowTheme.bodyText1.override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFFA5ABAE),
                                                    ),
                                                    enabledBorder: UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    focusedBorder: UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                        20, 24, 20, 0),
                                                    suffixIcon: InkWell(
                                                      onTap: () => setState(
                                                            () => signUpPass2Visibility =
                                                        !signUpPass2Visibility,
                                                      ),
                                                      child: Icon(
                                                        signUpPass2Visibility
                                                            ? Icons.visibility_outlined
                                                            : Icons.visibility_off_outlined,
                                                        color: Color(0xFF757575),
                                                        size: 20,
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.bodyText1.override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFFA5ABAE),
                                                  ),
                                                  textAlign: TextAlign.end,
                                                  keyboardType: TextInputType.visiblePassword,
                                                  validator: (val) {
                                                    if (val.isEmpty) {
                                                      return 'إدخال تأكيد كلمة المرور';
                                                    }
                                                    if (val.length < 8) {
                                                      return 'Requires at least 8 characters.';
                                                    }
                                                    return null;
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Align(
                                                        alignment: AlignmentDirectional(0.75, 0),
                                                        child: FlutterFlowRadioButton(
                                                          options: ['نعم', 'لا'],
                                                          onChanged: (value) {
                                                            setState(
                                                                    () => radioButtonValue = value);
                                                          },
                                                          optionHeight: 25,
                                                          textStyle:
                                                          FlutterFlowTheme.bodyText1.override(
                                                            fontFamily: 'Poppins',
                                                            color: Colors.black,
                                                          ),
                                                          buttonPosition: RadioButtonPosition.right,
                                                          direction: Axis.horizontal,
                                                          radioButtonColor: Colors.blue,
                                                          inactiveRadioButtonColor:
                                                          Color(0x8A000000),
                                                          toggleable: false,
                                                          horizontalAlignment: WrapAlignment.start,
                                                          verticalAlignment:
                                                          WrapCrossAlignment.start,
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Align(
                                                        alignment: AlignmentDirectional(1, 0),
                                                        child: Text(
                                                          'هل تعاني من الإعاقة السمعية؟',
                                                          textAlign: TextAlign.end,
                                                          style: FlutterFlowTheme.bodyText1,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    setState(() => _loadingButton4 = true);
                                                    try {
                                                      if (!formKey.currentState.validate()) {
                                                        return;
                                                      }
                                                      if (signUpPassController.text !=
                                                          signUpPass2Controller.text) {
                                                        ScaffoldMessenger.of(context).showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              "Passwords don't match!",
                                                            ),
                                                          ),
                                                        );
                                                        return;
                                                      }
                                                      sendOTP(signUpEmailController.text, context);
                                                      beginPhoneAuth(
                                                        context: context,
                                                        phoneNumber: phoneNumberController.text,
                                                        email: signUpEmailController.text,
                                                        password: signUpPassController.text,
                                                      );
                                                      await Navigator.pushAndRemoveUntil(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) => PhoneAuthenWidget(
                                                            firstName: firstNameController.text,
                                                            lastName: textController2.text,
                                                            email: signUpEmailController.text,
                                                            phoneNumber: phoneNumberController.text,
                                                          ),
                                                        ),
                                                            (r) => false,
                                                      );
                                                    } finally {
                                                      setState(() => _loadingButton4 = false);
                                                    }
                                                  },
                                                  text: 'إنشاء حساب',
                                                  options: FFButtonOptions(
                                                    width: 230,
                                                    height: 60,
                                                    color: Colors.white,
                                                    textStyle: FlutterFlowTheme.subtitle2.override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF004D40),
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal,
                                                    ),
                                                    elevation: 3,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                    borderRadius: 8,
                                                  ),
                                                  loading: _loadingButton4,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
