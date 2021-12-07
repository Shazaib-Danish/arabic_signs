import '../dashboard/dashboard_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../signin/signin_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewpassWidget extends StatefulWidget {
  const NewpassWidget({Key key}) : super(key: key);

  @override
  _NewpassWidgetState createState() => _NewpassWidgetState();
}

class _NewpassWidgetState extends State<NewpassWidget> {
  TextEditingController textController1;
  bool passwordVisibility1;
  TextEditingController textController2;
  bool passwordVisibility2;
  bool _loadingButton = false;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    passwordVisibility1 = false;
    textController2 = TextEditingController();
    passwordVisibility2 = false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: Color(0xE8061E47),
          automaticallyImplyLeading: false,
          leading: InkWell(
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DashboardWidget(),
                ),
              );
            },
            child: Icon(
              Icons.home,
              color: Color(0xD3F2F2F2),
              size: 24,
            ),
          ),
          title: Align(
            alignment: AlignmentDirectional(0.9, 0),
            child: Text(
              'تغير كلمة المرور',
              style: FlutterFlowTheme.title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 4,
        ),
        backgroundColor: Color(0xFFF5F5F5),
        body: Container(
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
          ),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    color: Color(0x76B6B5B5),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(-0.1, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                          child: Image.asset(
                            'assets/images/lockk.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(30, 15, 30, 0),
                          child: TextFormField(
                            controller: textController1,
                            obscureText: !passwordVisibility1,
                            decoration: InputDecoration(
                              labelText: 'كلمة المرور الجديدة',
                              labelStyle: FlutterFlowTheme.bodyText1,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              filled: true,
                              fillColor: Color(0x9FFFFFFF),
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () => passwordVisibility1 =
                                      !passwordVisibility1,
                                ),
                                child: Icon(
                                  passwordVisibility1
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: Color(0xFF757575),
                                  size: 20,
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.bodyText1,
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'إدخال كلمة المرور';
                              }
                              if (val.length < 8) {
                                return 'يجب أن تكون كلمة المرور من 8 أحرف أو أرقام';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(30, 15, 30, 0),
                          child: TextFormField(
                            controller: textController2,
                            obscureText: !passwordVisibility2,
                            decoration: InputDecoration(
                              labelText: 'تأكيد كلمة المرور ',
                              labelStyle: FlutterFlowTheme.bodyText1,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              filled: true,
                              fillColor: Color(0x9FFFFFFF),
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () => passwordVisibility2 =
                                      !passwordVisibility2,
                                ),
                                child: Icon(
                                  passwordVisibility2
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: Color(0xFF757575),
                                  size: 20,
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.bodyText1,
                            keyboardType: TextInputType.visiblePassword,
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'إدخال تأكيد كلمة المرور';
                              }
                              if (val.length < 8) {
                                return 'يجب أن تكون كلمة المرور من 8 أحرف أو أرقام';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              setState(() => _loadingButton = true);
                              try {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SigninWidget(),
                                  ),
                                );
                              } finally {
                                setState(() => _loadingButton = false);
                              }
                            },
                            text: 'حفظ',
                            options: FFButtonOptions(
                              width: 130,
                              height: 40,
                              color: Color(0xB2061E47),
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
                            loading: _loadingButton,
                          ),
                        )
                      ],
                    ),
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
