import 'package:arabic_lan/email_authen/email_auth.dart';
import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../signin/signin_widget.dart';
import 'package:flutter/material.dart';

class PhoneAuthenWidget extends StatefulWidget {
  const PhoneAuthenWidget(
      {Key key, this.email, this.password, this.firstName, this.lastName, this.phoneNumber})
      : super(key: key);

  final String email;
  final String password;
  final String phoneNumber;
  final String firstName;
  final String lastName;

  @override
  _PhoneAuthenWidgetState createState() => _PhoneAuthenWidgetState();
}

class _PhoneAuthenWidgetState extends State<PhoneAuthenWidget> {
  TextEditingController phoneNumberController;
  bool _loadingButton = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    phoneNumberController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xCA061E47),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SigninWidget(),
              ),
            );
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: Colors.white,
            size: 32,
          ),
        ),
        title: Align(
          alignment: AlignmentDirectional(0.9, 0),
          child: Text(
            'التحقق من الكود',
            textAlign: TextAlign.end,
            style: FlutterFlowTheme.title2.override(
              fontFamily: 'Lexend Deca',
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Color(0x8E1A1A4A),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          color: Color(0xFFC5C4CD),
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            image: Image.asset(
              'assets/images/pexels-cottonbro-4629623.jpg',
            ).image,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'تحقق من رقم الهاتف',
              style: TextStyle(
                fontFamily: 'Lexend Deca',
                color: Color(0xFFFFFFFF),
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.start,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
              child: TextFormField(
                controller: phoneNumberController,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'أدخل الرمز المكون من 6 أرقام',
                  labelStyle: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Lexend Deca',
                    color: Color(0x98FFFFFF),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  hintText: '000000',
                  hintStyle: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Lexend Deca',
                    color: Color(0x98FFFFFF),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
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
                  fillColor: Color(0xB19E9E9E),
                  contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                ),
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Lexend Deca',
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.end,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  setState(() => _loadingButton = true);
                  try {
                    if (phoneNumberController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Enter SMS verification code.'),
                        ),
                      );
                      return;
                    }
                    final phoneVerifiedUser = await verifySmsCode(
                      context: context,
                      smsCode: phoneNumberController.text,
                    );
                    if (phoneVerifiedUser == null) {
                      return;
                    } else {
                      await Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EmailAuthenWidget(
                            email: widget.email,
                            password: widget.password,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            phoneNumber: widget.phoneNumber,
                          ),
                        ),
                            (r) => false,
                      );
                    }
                  } finally {
                    setState(() => _loadingButton = false);
                  }
                },
                text: 'التحقق من كود',
                options: FFButtonOptions(
                  width: 230,
                  height: 60,
                  color: Colors.white,
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF0D0D0E),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  elevation: 3,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 8,
                ),
                loading: _loadingButton,
              ),
            )
          ],
        ),
      ),
    );
  }
}
