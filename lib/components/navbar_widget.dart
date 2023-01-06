import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({Key? key}) : super(key: key);

  @override
  _NavbarWidgetState createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 7,
            color: Color(0x2F1D2429),
            offset: Offset(0, 3),
          )
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
              child: FlutterFlowIconButton(
                borderRadius: 8,
                borderWidth: 1,
                buttonSize: 40,
                icon: Icon(
                  Icons.home_rounded,
                  color: Color(0xFF57636C),
                  size: 30,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
              child: FlutterFlowIconButton(
                borderRadius: 8,
                borderWidth: 1,
                buttonSize: 40,
                icon: Icon(
                  Icons.notifications_sharp,
                  color: Color(0xFF57636C),
                  size: 30,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
              child: FlutterFlowIconButton(
                borderRadius: 8,
                borderWidth: 1,
                buttonSize: 40,
                icon: Icon(
                  Icons.chat_bubble_rounded,
                  color: Color(0xFF57636C),
                  size: 25,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
            FlutterFlowIconButton(
              borderRadius: 8,
              borderWidth: 1,
              buttonSize: 40,
              icon: Icon(
                Icons.person_sharp,
                color: Color(0xFF57636C),
                size: 30,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ],
        ),
      ),
    );
  }
}
