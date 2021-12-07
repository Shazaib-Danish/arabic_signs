import '../dashboard/dashboard_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentDoneWidget extends StatefulWidget {
  const PaymentDoneWidget({Key key}) : super(key: key);

  @override
  _PaymentDoneWidgetState createState() => _PaymentDoneWidgetState();
}

class _PaymentDoneWidgetState extends State<PaymentDoneWidget> {
  bool _loadingButton = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xEA061E47),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 40, 20, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color(0xFF1E2429),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    buttonSize: 46,
                    icon: Icon(
                      Icons.close_rounded,
                      color: Colors.white,
                      size: 20,
                    ),
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 90, 0, 0),
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Color(0xFF00A227),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(70),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
                child: Icon(
                  Icons.check_rounded,
                  color: Colors.white,
                  size: 60,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
            child: Text(
              'تم تأكيد عملية الدفع!',
              style: FlutterFlowTheme.title1.override(
                fontFamily: 'Lexend Deca',
                color: Color(0xFF00A227),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
            child: Text(
              '00.0 SAR',
              style: GoogleFonts.getFont(
                'Overpass',
                color: Colors.white,
                fontWeight: FontWeight.w100,
                fontSize: 62,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24, 8, 24, 0),
            child: Text(
              'تم تأكيد الدفع الخاص بك ، قد يستغرق الأمر من ساعة إلى ساعتين حتى تتم عملية الدفع الخاصة بك وتظهر في قائمة التحويل الخاصة بك.',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.bodyText2.override(
                fontFamily: 'Lexend Deca',
                color: Color(0xFFB0B8BF),
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 32),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      setState(() => _loadingButton = true);
                      try {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DashboardWidget(),
                          ),
                        );
                      } finally {
                        setState(() => _loadingButton = false);
                      }
                    },
                    text: '',
                    icon: Icon(
                      Icons.home,
                      size: 15,
                    ),
                    options: FFButtonOptions(
                      width: 100,
                      height: 50,
                      color: Color(0x54C1BDBD),
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      elevation: 0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 40,
                    ),
                    loading: _loadingButton,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
