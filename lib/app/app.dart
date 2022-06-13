// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:provider/provider.dart';
// import 'package:sentry_flutter/sentry_flutter.dart';
// import 'package:stacked/stacked_annotations.dart';
// import 'package:stacked_services/stacked_services.dart';
// import 'package:pedapp/app/app.router.dart';
// import 'package:pedapp/constants/app_themes.dart';
// import 'package:pedapp/providers/theme_provider.dart';
// import 'package:pedapp/ui/appointment/appointment_screen.dart';
// import 'package:pedapp/ui/appointments/appointments_screen.dart';
// import 'package:pedapp/ui/auth/forgot_password/forgot_password_screen.dart';
// import 'package:pedapp/ui/auth/signin/sign_in_screen.dart';
// import 'package:pedapp/ui/auth/signup/pre_signup/sign_up_screen.dart';
// import 'package:pedapp/ui/auth/signup/validation/sign_up_validation_screen.dart';
// import 'package:pedapp/ui/doctor/doctor_screen.dart';
// import 'package:pedapp/ui/doctors/doctors_screen.dart';
// import 'package:pedapp/ui/drugstores/drugstores_screen.dart';
// import 'package:pedapp/ui/exams/exams_screen.dart';
// import 'package:pedapp/ui/home/home_screen.dart';
// import 'package:pedapp/ui/messages/conversation_screen.dart';
// import 'package:pedapp/ui/messages/messages_screen.dart';
// import 'package:pedapp/ui/new_appointment/new_appointment_screen.dart';
// import 'package:pedapp/ui/new_message/new_message_screen.dart';
// import 'package:pedapp/ui/notifications/notifications_screen.dart';
// import 'package:pedapp/ui/onboarding/onboarding_screen.dart';
// import 'package:pedapp/ui/profile/editing_profile_screen.dart';
// import 'package:pedapp/ui/profile/profile_screen.dart';
// import 'package:pedapp/ui/search/search_screen.dart';
// import 'package:pedapp/ui/shared/widgets/pdf_viewer_from_url.dart';
// import 'package:pedapp/ui/splash/splash_screen.dart';

// @StackedApp(routes: [
//   CupertinoRoute(page: SplashScreen, initial: true),
//   CupertinoRoute(page: OnboardingScreen),
//   CupertinoRoute(page: SignInScreen),
//   CupertinoRoute(page: ForgotPasswordScreen),
//   CupertinoRoute(page: SignUpScreen),
//   MaterialRoute(page: SignUpValidationScreen),
//   MaterialRoute(page: HomeScreen),
//   CupertinoRoute(page: ProfileScreen),
//   CupertinoRoute(page: EditingProfileScreen),
//   CupertinoRoute(page: ExamsScreen),
//   CupertinoRoute(page: AppointmentsScreen),
//   CupertinoRoute(page: DrugstoresScreen),
//   CupertinoRoute(page: DoctorsScreen),
//   CupertinoRoute(page: SearchScreen),
//   CupertinoRoute(page: MessagesScreen),
//   CupertinoRoute(page: ConversationScreen),
//   CupertinoRoute(page: PDFViewerFromUrl),
//   MaterialRoute(page: AppointmentScreen),
//   MaterialRoute(page: DoctorScreen),
//   MaterialRoute(page: NewAppointmentScreen),
//   MaterialRoute(page: NewMessageScreen),
//   MaterialRoute(page: NotificationsScreen),
// ])
// class App extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<ThemeProvider>(
//       builder: (_, themeProviderRef, __) {
//         return AnnotatedRegion<SystemUiOverlayStyle>(
//           value: SystemUiOverlayStyle(
//             statusBarBrightness: themeProviderRef.isDarkModeOn ? Brightness.dark : Brightness.light,
//           ),
//           child: GestureDetector(
//             behavior: HitTestBehavior.opaque,
//             onTap: () {
//               FocusScopeNode currentFocus = FocusScope.of(context);

//               if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
//                 FocusManager.instance.primaryFocus?.unfocus();
//               }
//             },
//             child: MaterialApp(
//               debugShowCheckedModeBanner: false,
//               // showPerformanceOverlay: true,
//               title: "pedapp",
//               theme: AppThemes.lightTheme,
//               darkTheme: AppThemes.darkTheme,
//               themeMode: themeProviderRef.isDarkModeOn && false
//                   // ignore: dead_code
//                   ? ThemeMode.dark
//                   : ThemeMode.light,
//               localizationsDelegates: [
//                 GlobalCupertinoLocalizations.delegate,
//                 GlobalMaterialLocalizations.delegate,
//                 GlobalWidgetsLocalizations.delegate
//               ],
//               supportedLocales: [const Locale('pt', 'BR')],
//               navigatorKey: StackedService.navigatorKey,
//               onGenerateRoute: StackedRouter().onGenerateRoute,
//               navigatorObservers: [SentryNavigatorObserver()],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
