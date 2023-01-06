import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '../../backend/backend.dart';

import '../../auth/firebase_user_provider.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  CarryFirebaseUser? initialUser;
  CarryFirebaseUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(CarryFirebaseUser newUser) {
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    if (notifyOnAuthChange) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) =>
          appStateNotifier.loggedIn ? NavBarPage() : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : LoginWidget(),
          routes: [
            FFRoute(
              name: 'login',
              path: 'login',
              builder: (context, params) => LoginWidget(),
            ),
            FFRoute(
              name: 'account',
              path: 'account',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'account')
                  : AccountWidget(),
            ),
            FFRoute(
              name: 'profile_photo',
              path: 'profilePhoto',
              builder: (context, params) => ProfilePhotoWidget(),
            ),
            FFRoute(
              name: 'invitfrend',
              path: 'invitfrend',
              builder: (context, params) => InvitfrendWidget(),
            ),
            FFRoute(
              name: 'VRFPending',
              path: 'vRFPending',
              builder: (context, params) => VRFPendingWidget(),
            ),
            FFRoute(
              name: 'KYC_PAGE-1',
              path: 'kycPage-1',
              builder: (context, params) => KycPage1Widget(),
            ),
            FFRoute(
              name: 'KYC_PAGE-2',
              path: 'kYCPAGE-2',
              builder: (context, params) => KycPage2Widget(),
            ),
            FFRoute(
              name: 'KYC_PAGE-1Edit',
              path: 'kycPage-1edited',
              builder: (context, params) => KYCPAGE1EditWidget(),
            ),
            FFRoute(
              name: 'KYC_PAGE-2Edit',
              path: 'kYCPAGE-2Edit',
              builder: (context, params) => KYCPAGE2EditWidget(),
            ),
            FFRoute(
              name: 'KYC_PAGE-2REJ',
              path: 'kYCPAGE-2REJ',
              builder: (context, params) => KycPage2rejWidget(),
            ),
            FFRoute(
              name: 'SecMK',
              path: 'secMK',
              builder: (context, params) => SecMKWidget(),
            ),
            FFRoute(
              name: 'sellerdb',
              path: 'sellerdb',
              builder: (context, params) => SellerdbWidget(),
            ),
            FFRoute(
              name: 'edit_app',
              path: 'editApp',
              builder: (context, params) => EditAppWidget(
                refapp: params.getParam(
                    'refapp', ParamType.DocumentReference, false, ['apps']),
              ),
            ),
            FFRoute(
              name: 'Purchasedb',
              path: 'Purchasedb',
              builder: (context, params) => PurchasedbWidget(),
            ),
            FFRoute(
              name: 'new_app',
              path: 'newApp',
              builder: (context, params) => NewAppWidget(
                refapp: params.getParam(
                    'refapp', ParamType.DocumentReference, false, ['apps']),
              ),
            ),
            FFRoute(
              name: 'appdetail',
              path: 'appdetail',
              builder: (context, params) => AppdetailWidget(
                refapp: params.getParam(
                    'refapp', ParamType.DocumentReference, false, ['apps']),
              ),
            ),
            FFRoute(
              name: 'cart',
              path: 'cart',
              builder: (context, params) => CartWidget(),
            ),
            FFRoute(
              name: 'checkoutcomplete',
              path: 'checkoutcomplete',
              builder: (context, params) => CheckoutcompleteWidget(),
            ),
            FFRoute(
              name: 'Exmenu',
              path: 'exMainMenu',
              builder: (context, params) => ExmenuWidget(),
            ),
            FFRoute(
              name: 'Exlist',
              path: 'exlist',
              builder: (context, params) => ExlistWidget(),
            ),
            FFRoute(
              name: 'Exdetail',
              path: 'exdetail',
              builder: (context, params) => ExdetailWidget(
                exlist: params.getParam(
                    'exlist', ParamType.DocumentReference, false, ['ExTrade']),
              ),
            ),
            FFRoute(
              name: 'extrade',
              path: 'extrade',
              builder: (context, params) => ExtradeWidget(
                exget: params.getParam(
                    'exget', ParamType.DocumentReference, false, ['ExTrade']),
              ),
            ),
            FFRoute(
              name: 'KYC_V1',
              path: 'kycV1',
              builder: (context, params) => KycV1Widget(),
            ),
            FFRoute(
              name: 'userdb',
              path: 'userdb',
              builder: (context, params) => UserdbWidget(
                userdb: params.getParam(
                    'userdb', ParamType.DocumentReference, false, ['users']),
              ),
            ),
            FFRoute(
              name: 'ExCreateTWD',
              path: 'exCreateTWD',
              builder: (context, params) => ExCreateTWDWidget(),
            ),
            FFRoute(
              name: 'ExCreateMYR2',
              path: 'exCreateMYR2',
              builder: (context, params) => ExCreateMYR2Widget(),
            ),
            FFRoute(
              name: 'Excomplect',
              path: 'excomplect',
              builder: (context, params) => ExcomplectWidget(),
            ),
            FFRoute(
              name: 'notification',
              path: 'notification',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'notification')
                  : NotificationWidget(),
            ),
            FFRoute(
              name: 'MainMenu',
              path: 'mainMenu',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'MainMenu')
                  : MainMenuWidget(),
            ),
            FFRoute(
              name: 'CarryPoin',
              path: 'carryPoin',
              builder: (context, params) => CarryPoinWidget(),
            ),
            FFRoute(
              name: 'CPtopup',
              path: 'cPtopup',
              builder: (context, params) => CPtopupWidget(),
            ),
            FFRoute(
              name: 'carrytoppdone',
              path: 'carrytoppdone',
              builder: (context, params) => CarrytoppdoneWidget(),
            ),
            FFRoute(
              name: 'UserVRF',
              path: 'userVRF',
              builder: (context, params) => UserVRFWidget(),
            ),
            FFRoute(
              name: 'KYCPending',
              path: 'kYCPending',
              builder: (context, params) => KYCPendingWidget(),
            ),
            FFRoute(
              name: 'KYCpage',
              path: 'kYCpage',
              builder: (context, params) => KYCpageWidget(
                userreffromkyc: params.getParam('userreffromkyc',
                    ParamType.DocumentReference, false, ['users']),
                kycref: params.getParam('kycref', ParamType.DocumentReference,
                    false, ['users', 'ekyc']),
              ),
            ),
            FFRoute(
              name: 'kycReject',
              path: 'kycReject',
              builder: (context, params) => KycRejectWidget(
                kycreject: params.getParam('kycreject',
                    ParamType.DocumentReference, false, ['users', 'ekyc']),
              ),
            ),
            FFRoute(
              name: 'kycVRFfair',
              path: 'kycVRFfair',
              builder: (context, params) => KycVRFfairWidget(
                kycreject: params.getParam('kycreject',
                    ParamType.DocumentReference, false, ['users', 'ekyc']),
              ),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ).toRoute(appStateNotifier),
      ],
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState =>
      (routerDelegate.refreshListenable as AppStateNotifier);
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void setRedirectLocationIfUnset(String location) =>
      (routerDelegate.refreshListenable as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList, collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/_Carry_(850__1920_)_(900__1920_).png',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
