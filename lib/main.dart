import 'package:provider/provider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'auth/firebase_user_provider.dart';
import 'auth/auth_util.dart';

import 'backend/firebase/firebase_config.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'flutter_flow/nav/nav.dart';
import 'index.dart';

import 'backend/stripe/payment_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initFirebase();

  final appState = FFAppState(); // Initialize FFAppState

  await initializeStripe();
  if (!kIsWeb) {
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  }

  runApp(ChangeNotifierProvider(
    create: (context) => appState,
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  ThemeMode _themeMode = ThemeMode.system;

  late Stream<CarryFirebaseUser> userStream;

  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;

  final authUserSub = authenticatedUserStream.listen((_) {});

  @override
  void initState() {
    super.initState();
    _appStateNotifier = AppStateNotifier();
    _router = createRouter(_appStateNotifier);
    userStream = carryFirebaseUserStream()
      ..listen((user) => _appStateNotifier.update(user));
    jwtTokenStream.listen((_) {});
    Future.delayed(
      Duration(seconds: 1),
      () => _appStateNotifier.stopShowingSplashImage(),
    );
  }

  @override
  void dispose() {
    authUserSub.cancel();

    super.dispose();
  }

  void setLocale(String language) {
    setState(() => _locale = createLocale(language));
  }

  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Carry',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [
        Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
      ],
      theme: ThemeData(brightness: Brightness.light),
      themeMode: _themeMode,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key? key, this.initialPage, this.page}) : super(key: key);

  final String? initialPage;
  final Widget? page;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPageName = 'MainMenu';
  late Widget? _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPageName = widget.initialPage ?? _currentPageName;
    _currentPage = widget.page;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'MainMenu': MainMenuWidget(),
      'notification': NotificationWidget(),
      'account': AccountWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPageName);
    return Scaffold(
      body: _currentPage ?? tabs[_currentPageName],
      extendBody: true,
      bottomNavigationBar: FloatingNavbar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() {
          _currentPage = null;
          _currentPageName = tabs.keys.toList()[i];
        }),
        backgroundColor: Color(0xEBBFA980),
        selectedItemColor: FlutterFlowTheme.of(context).backgroundComponents,
        unselectedItemColor: FlutterFlowTheme.of(context).primaryBtnText,
        selectedBackgroundColor: Color(0x00000000),
        borderRadius: 35,
        itemBorderRadius: 5,
        margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
        width: 360,
        elevation: 5,
        items: [
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  currentIndex == 0 ? Icons.home_rounded : Icons.home_outlined,
                  color: currentIndex == 0
                      ? FlutterFlowTheme.of(context).backgroundComponents
                      : FlutterFlowTheme.of(context).primaryBtnText,
                  size: 24,
                ),
                Text(
                  '首頁',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: currentIndex == 0
                        ? FlutterFlowTheme.of(context).backgroundComponents
                        : FlutterFlowTheme.of(context).primaryBtnText,
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  currentIndex == 1
                      ? Icons.notifications_rounded
                      : Icons.notifications_none_rounded,
                  color: currentIndex == 1
                      ? FlutterFlowTheme.of(context).backgroundComponents
                      : FlutterFlowTheme.of(context).primaryBtnText,
                  size: 25,
                ),
                Text(
                  '通知',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: currentIndex == 1
                        ? FlutterFlowTheme.of(context).backgroundComponents
                        : FlutterFlowTheme.of(context).primaryBtnText,
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  currentIndex == 2 ? Icons.person : Icons.person_outlined,
                  color: currentIndex == 2
                      ? FlutterFlowTheme.of(context).backgroundComponents
                      : FlutterFlowTheme.of(context).primaryBtnText,
                  size: 24,
                ),
                Text(
                  '帳戶',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: currentIndex == 2
                        ? FlutterFlowTheme.of(context).backgroundComponents
                        : FlutterFlowTheme.of(context).primaryBtnText,
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}