import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class KycPage2Widget extends StatefulWidget {
  const KycPage2Widget({Key? key}) : super(key: key);

  @override
  _KycPage2WidgetState createState() => _KycPage2WidgetState();
}

class _KycPage2WidgetState extends State<KycPage2Widget> {
  bool isMediaUploading1 = false;
  String uploadedFileUrl1 = '';

  bool isMediaUploading2 = false;
  String uploadedFileUrl2 = '';

  bool isMediaUploading3 = false;
  String uploadedFileUrl3 = '';

  PageController? pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF1F4F8),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryColor,
          automaticallyImplyLeading: false,
          title: Align(
            alignment: AlignmentDirectional(0, -0.05),
            child: Text(
              'Carry KYC會員系統',
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    fontSize: 30,
                  ),
            ),
          ),
          actions: [],
          centerTitle: false,
          toolbarHeight: 100,
          elevation: 0,
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                        child: Text(
                          '為保障平台用戶權益，Carry將向您收取個人資訊，並且在7個工作日內日審核您的會員資格及權限。',
                          style:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF57636C),
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0.1),
                    child: Text(
                      '上傳護照頁及簽名頁',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 14, 24, 0),
                child: Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Color(0x4D101213),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: StreamBuilder<List<EkycRecord>>(
                    stream: queryEkycRecord(
                      singleRecord: true,
                    ),
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
                      List<EkycRecord> pageViewEkycRecordList = snapshot.data!;
                      // Return an empty Container when the item does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final pageViewEkycRecord =
                          pageViewEkycRecordList.isNotEmpty
                              ? pageViewEkycRecordList.first
                              : null;
                      return Container(
                        width: double.infinity,
                        height: 500,
                        child: Stack(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                              child: PageView(
                                controller: pageViewController ??=
                                    PageController(initialPage: 0),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Image.network(
                                    valueOrDefault<String>(
                                      uploadedFileUrl1,
                                      'https://www.faketemplate.ru/wp-content/uploads/2020/06/malaysia-passport-template-v1-01.jpg',
                                    ),
                                    width: 100,
                                    height: 130,
                                    fit: BoxFit.cover,
                                  ),
                                  Image.network(
                                    valueOrDefault<String>(
                                      uploadedFileUrl2,
                                      'https://topics.amcham.com.tw/wp-content/uploads/2021/03/03_2021_topics-taiwan-issues-ARC-numbering.jpg',
                                    ),
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                  Image.network(
                                    valueOrDefault<String>(
                                      uploadedFileUrl3,
                                      'data:image/jpeg;base64,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',
                                    ),
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 1),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child:
                                    smooth_page_indicator.SmoothPageIndicator(
                                  controller: pageViewController ??=
                                      PageController(initialPage: 0),
                                  count: 3,
                                  axisDirection: Axis.horizontal,
                                  onDotClicked: (i) {
                                    pageViewController!.animateToPage(
                                      i,
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.ease,
                                    );
                                  },
                                  effect:
                                      smooth_page_indicator.ExpandingDotsEffect(
                                    expansionFactor: 2,
                                    spacing: 8,
                                    radius: 16,
                                    dotWidth: 16,
                                    dotHeight: 16,
                                    dotColor: Color(0xFF9E9E9E),
                                    activeDotColor: Color(0xFF3F51B5),
                                    paintStyle: PaintingStyle.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).grayIcon,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.07, -0.48),
                                child: InkWell(
                                  onTap: () async {
                                    final selectedMedia =
                                        await selectMediaWithSourceBottomSheet(
                                      context: context,
                                      imageQuality: 21,
                                      allowPhoto: true,
                                    );
                                    if (selectedMedia != null &&
                                        selectedMedia.every((m) =>
                                            validateFileFormat(
                                                m.storagePath, context))) {
                                      setState(() => isMediaUploading1 = true);
                                      var downloadUrls = <String>[];
                                      try {
                                        downloadUrls = (await Future.wait(
                                          selectedMedia.map(
                                            (m) async => await uploadData(
                                                m.storagePath, m.bytes),
                                          ),
                                        ))
                                            .where((u) => u != null)
                                            .map((u) => u!)
                                            .toList();
                                      } finally {
                                        isMediaUploading1 = false;
                                      }
                                      if (downloadUrls.length ==
                                          selectedMedia.length) {
                                        setState(() => uploadedFileUrl1 =
                                            downloadUrls.first);
                                      } else {
                                        setState(() {});
                                        return;
                                      }
                                    }
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        uploadedFileUrl1,
                                        'https://media.istockphoto.com/id/1248723171/vector/camera-photo-upload-icon-on-isolated-white-background-eps-10-vector.jpg?s=612x612&w=0&k=20&c=e-OBJ2jbB-W_vfEwNCip4PW4DqhHGXYMtC3K_mzOac0=',
                                      ),
                                      width: 80,
                                      height: 80,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.11, 0.86),
                                child: Text(
                                  '護照正面',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).grayIcon,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.07, -0.48),
                                  child: InkWell(
                                    onTap: () async {
                                      final selectedMedia =
                                          await selectMediaWithSourceBottomSheet(
                                        context: context,
                                        imageQuality: 21,
                                        allowPhoto: true,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading2 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          isMediaUploading2 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl2 =
                                              downloadUrls.first);
                                        } else {
                                          setState(() {});
                                          return;
                                        }
                                      }
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(
                                        valueOrDefault<String>(
                                          uploadedFileUrl2,
                                          'https://media.istockphoto.com/id/1248723171/vector/camera-photo-upload-icon-on-isolated-white-background-eps-10-vector.jpg?s=612x612&w=0&k=20&c=e-OBJ2jbB-W_vfEwNCip4PW4DqhHGXYMtC3K_mzOac0=',
                                        ),
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.11, 0.86),
                                  child: Text(
                                    '居留證正面',
                                    textAlign: TextAlign.center,
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).grayIcon,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.07, -0.48),
                                  child: InkWell(
                                    onTap: () async {
                                      final selectedMedia =
                                          await selectMediaWithSourceBottomSheet(
                                        context: context,
                                        imageQuality: 21,
                                        allowPhoto: true,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading3 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          isMediaUploading3 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl3 =
                                              downloadUrls.first);
                                        } else {
                                          setState(() {});
                                          return;
                                        }
                                      }
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(
                                        valueOrDefault<String>(
                                          uploadedFileUrl3,
                                          'https://media.istockphoto.com/id/1248723171/vector/camera-photo-upload-icon-on-isolated-white-background-eps-10-vector.jpg?s=612x612&w=0&k=20&c=e-OBJ2jbB-W_vfEwNCip4PW4DqhHGXYMtC3K_mzOac0=',
                                        ),
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.11, 0.86),
                                  child: Text(
                                    '居留證反面',
                                    textAlign: TextAlign.center,
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
            child: StreamBuilder<List<EkycRecord>>(
              stream: queryEkycRecord(
                singleRecord: true,
              ),
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
                List<EkycRecord> buttonLoginEkycRecordList = snapshot.data!;
                // Return an empty Container when the item does not exist.
                if (snapshot.data!.isEmpty) {
                  return Container();
                }
                final buttonLoginEkycRecord =
                    buttonLoginEkycRecordList.isNotEmpty
                        ? buttonLoginEkycRecordList.first
                        : null;
                return FFButtonWidget(
                  onPressed: () async {
                    final ekycCreateData = createEkycRecordData(
                      status: true,
                      passport: uploadedFileUrl1,
                      arcA: buttonLoginEkycRecord!.arcA,
                      arcB: buttonLoginEkycRecord!.arcB,
                    );
                    await EkycRecord.createDoc(currentUserReference!)
                        .set(ekycCreateData);

                    context.pushNamed('checkoutcomplete');
                  },
                  text: '下一步 (3/4)',
                  options: FFButtonOptions(
                    width: 270,
                    height: 50,
                    color: Color(0xFF0F1113),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Outfit',
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
            child: StreamBuilder<List<EkycRecord>>(
              stream: queryEkycRecord(
                singleRecord: true,
              ),
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
                List<EkycRecord> buttonLoginEkycRecordList = snapshot.data!;
                // Return an empty Container when the item does not exist.
                if (snapshot.data!.isEmpty) {
                  return Container();
                }
                final buttonLoginEkycRecord =
                    buttonLoginEkycRecordList.isNotEmpty
                        ? buttonLoginEkycRecordList.first
                        : null;
                return FFButtonWidget(
                  onPressed: () async {
                    final ekycCreateData = createEkycRecordData(
                      status: false,
                    );
                    await EkycRecord.createDoc(currentUserReference!)
                        .set(ekycCreateData);

                    context.pushNamed('checkoutcomplete');
                  },
                  text: '略過',
                  options: FFButtonOptions(
                    width: 270,
                    height: 50,
                    color: FlutterFlowTheme.of(context).grayIcon,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Outfit',
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
