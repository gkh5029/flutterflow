import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class ExdetailWidget extends StatefulWidget {
  const ExdetailWidget({
    Key? key,
    this.exlist,
  }) : super(key: key);

  final DocumentReference? exlist;

  @override
  _ExdetailWidgetState createState() => _ExdetailWidgetState();
}

class _ExdetailWidgetState extends State<ExdetailWidget>
    with TickerProviderStateMixin {
  AudioPlayer? soundPlayer;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<ExTradeRecord>(
      stream: ExTradeRecord.getDocument(widget.exlist!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitCircle(
                color: FlutterFlowTheme.of(context).grayIcon,
                size: 50,
              ),
            ),
          );
        }
        final exdetailExTradeRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 50, 24, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        '兌換項目',
                        style: FlutterFlowTheme.of(context).bodyText2,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 60,
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 30,
                        ),
                        onPressed: () async {
                          context.pop();
                        },
                      ),
                      StreamBuilder<ExTradeRecord>(
                        stream: ExTradeRecord.getDocument(widget.exlist!),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: SpinKitCircle(
                                  color: FlutterFlowTheme.of(context).grayIcon,
                                  size: 50,
                                ),
                              ),
                            );
                          }
                          final textExTradeRecord = snapshot.data!;
                          return Text(
                            textExTradeRecord.item!,
                            style: FlutterFlowTheme.of(context).title1,
                          );
                        },
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        buttonSize: 46,
                        icon: Icon(
                          Icons.chat_bubble_outline_rounded,
                          color: FlutterFlowTheme.of(context).gray600,
                          size: 24,
                        ),
                        onPressed: () async {
                          context.pop();
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 30),
                  child: Image.network(
                    exdetailExTradeRecord.image!,
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      exdetailExTradeRecord.currency!,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 30,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                    AutoSizeText(
                      formatNumber(
                        exdetailExTradeRecord.amount!,
                        formatType: FormatType.decimal,
                        decimalType: DecimalType.periodDecimal,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 30,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '事由：',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF0A0B26),
                              fontSize: 20,
                            ),
                      ),
                      AutoSizeText(
                        exdetailExTradeRecord.des!,
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).black600,
                              fontSize: 20,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: StreamBuilder<UsersRecord>(
                    stream:
                        UsersRecord.getDocument(exdetailExTradeRecord.userid!),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: SpinKitCircle(
                              color: FlutterFlowTheme.of(context).grayIcon,
                              size: 50,
                            ),
                          ),
                        );
                      }
                      final rowUsersRecord = snapshot.data!;
                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'CARRY 信用評級：',
                            textAlign: TextAlign.start,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                    ),
                          ),
                          Text(
                            rowUsersRecord.csr!.toString(),
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                    ),
                          ),
                          Text(
                            ' / 100',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(17, 0, 15, 0),
                  child: StreamBuilder<UsersRecord>(
                    stream:
                        UsersRecord.getDocument(exdetailExTradeRecord.userid!),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: SpinKitCircle(
                              color: FlutterFlowTheme.of(context).grayIcon,
                              size: 50,
                            ),
                          ),
                        );
                      }
                      final progressBarUsersRecord = snapshot.data!;
                      return LinearPercentIndicator(
                        percent: progressBarUsersRecord.csr!,
                        width: MediaQuery.of(context).size.width * 0.9,
                        lineHeight: 24,
                        animation: true,
                        progressColor: Color(0xFF1078F9),
                        backgroundColor: FlutterFlowTheme.of(context).lineColor,
                        barRadius: Radius.circular(40),
                        padding: EdgeInsets.zero,
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 20, 25, 10),
                  child: StreamBuilder<UsersRecord>(
                    stream:
                        UsersRecord.getDocument(exdetailExTradeRecord.userid!),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: SpinKitCircle(
                              color: FlutterFlowTheme.of(context).grayIcon,
                              size: 50,
                            ),
                          ),
                        );
                      }
                      final carStatsUsersRecord = snapshot.data!;
                      return InkWell(
                        onTap: () async {
                          context.pushNamed(
                            'userdb',
                            queryParams: {
                              'userdb': serializeParam(
                                exdetailExTradeRecord.userid,
                                ParamType.DocumentReference,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        carStatsUsersRecord.photoUrl!,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 120, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    carStatsUsersRecord.displayName!,
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xAB101213),
                                        ),
                                  ),
                                  Text(
                                    carStatsUsersRecord.email!,
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xAB101213),
                                        ),
                                  ),
                                  Text(
                                    carStatsUsersRecord.phoneNumber!,
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: Container(
                    height: 200,
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, -0.75),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).alternate,
                              shape: BoxShape.circle,
                            ),
                            child: FFButtonWidget(
                              onPressed: () async {
                                HapticFeedback.vibrate();
                                soundPlayer ??= AudioPlayer();
                                if (soundPlayer!.playing) {
                                  await soundPlayer!.stop();
                                }
                                soundPlayer!.setVolume(0.77);
                                soundPlayer!
                                    .setAsset(
                                        'assets/audios/LINE_Notification_Nudge-640363.mp3')
                                    .then((_) => soundPlayer!.play());

                                var confirmDialogResponse =
                                    await showDialog<bool>(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('換匯合約成立提示'),
                                              content: Text(
                                                  '您將發起本次換匯，若合約成立後無辜取消者將影響您的信用分數，您已確認本次合約成立？'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext,
                                                          false),
                                                  child: Text('取消'),
                                                ),
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext,
                                                          true),
                                                  child: Text('是的'),
                                                ),
                                              ],
                                            );
                                          },
                                        ) ??
                                        false;
                                if (confirmDialogResponse) {
                                  final sendEXCreateData =
                                      createSendEXRecordData(
                                    exref: exdetailExTradeRecord.reference,
                                    date: getCurrentTimestamp,
                                    takeamount: exdetailExTradeRecord.amount
                                        ?.toString(),
                                  );
                                  await SendEXRecord.createDoc(
                                          exdetailExTradeRecord.userid!)
                                      .set(sendEXCreateData);

                                  context.pushNamed(
                                    'extrade',
                                    queryParams: {
                                      'exget': serializeParam(
                                        exdetailExTradeRecord.reference,
                                        ParamType.DocumentReference,
                                      ),
                                    }.withoutNulls,
                                  );

                                  final notificationCreateData =
                                      createNotificationRecordData(
                                    userid: exdetailExTradeRecord.userid,
                                    dec: '您的換匯合約獲得申請，請立即前往查看。',
                                    date: getCurrentTimestamp,
                                    refImg:
                                        'https://cdn.dribbble.com/users/1125681/screenshots/6067520/notification_3.gif',
                                    color: '#a0c1f2',
                                  );
                                  await NotificationRecord.createDoc(
                                          exdetailExTradeRecord.userid!)
                                      .set(notificationCreateData);
                                } else {
                                  Navigator.pop(context);
                                }
                              },
                              text: '兌換',
                              icon: Icon(
                                Icons.six_ft_apart_sharp,
                                size: 15,
                              ),
                              options: FFButtonOptions(
                                width: 200,
                                height: 50,
                                color: Color(0xFF1078F9),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
