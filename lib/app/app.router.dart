// // GENERATED CODE - DO NOT MODIFY BY HAND

// // **************************************************************************
// // StackedRouterGenerator
// // **************************************************************************

// // ignore_for_file: public_member_api_docs

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:stacked/stacked.dart';
// import 'package:stacked/stacked_annotations.dart';

// import '../models/appointment_model.dart';
// import '../models/doctor_model.dart';
// import '../models/question_model.dart';
// import '../models/searchable.dart';
// import '../ui/appointment/appointment_screen.dart';
// import '../ui/appointments/appointments_screen.dart';
// import '../ui/auth/forgot_password/forgot_password_screen.dart';
// import '../ui/auth/signin/sign_in_screen.dart';
// import '../ui/auth/signup/pre_signup/sign_up_screen.dart';
// import '../ui/auth/signup/validation/sign_up_validation_screen.dart';
// import '../ui/doctor/doctor_screen.dart';
// import '../ui/doctors/doctors_screen.dart';
// import '../ui/drugstores/drugstores_screen.dart';
// import '../ui/exams/exams_screen.dart';
// import '../ui/home/home_screen.dart';
// import '../ui/messages/conversation_screen.dart';
// import '../ui/messages/messages_screen.dart';
// import '../ui/new_appointment/new_appointment_screen.dart';
// import '../ui/new_message/new_message_screen.dart';
// import '../ui/notifications/notifications_screen.dart';
// import '../ui/onboarding/onboarding_screen.dart';
// import '../ui/profile/editing_profile_screen.dart';
// import '../ui/profile/profile_screen.dart';
// import '../ui/search/search_screen.dart';
// import '../ui/shared/widgets/pdf_viewer_from_url.dart';
// import '../ui/splash/splash_screen.dart';

// class Routes {
//   static const String splashScreen = '/';
//   static const String onboardingScreen = '/onboarding-screen';
//   static const String signInScreen = '/sign-in-screen';
//   static const String forgotPasswordScreen = '/forgot-password-screen';
//   static const String signUpScreen = '/sign-up-screen';
//   static const String signUpValidationScreen = '/sign-up-validation-screen';
//   static const String homeScreen = '/home-screen';
//   static const String profileScreen = '/profile-screen';
//   static const String editingProfileScreen = '/editing-profile-screen';
//   static const String examsScreen = '/exams-screen';
//   static const String appointmentsScreen = '/appointments-screen';
//   static const String drugstoresScreen = '/drugstores-screen';
//   static const String doctorsScreen = '/doctors-screen';
//   static const String searchScreen = '/search-screen';
//   static const String messagesScreen = '/messages-screen';
//   static const String conversationScreen = '/conversation-screen';
//   static const String pDFViewerFromUrl = '/p-df-viewer-from-url';
//   static const String appointmentScreen = '/appointment-screen';
//   static const String doctorScreen = '/doctor-screen';
//   static const String newAppointmentScreen = '/new-appointment-screen';
//   static const String newMessageScreen = '/new-message-screen';
//   static const String notificationsScreen = '/notifications-screen';
//   static const all = <String>{
//     splashScreen,
//     onboardingScreen,
//     signInScreen,
//     forgotPasswordScreen,
//     signUpScreen,
//     signUpValidationScreen,
//     homeScreen,
//     profileScreen,
//     editingProfileScreen,
//     examsScreen,
//     appointmentsScreen,
//     drugstoresScreen,
//     doctorsScreen,
//     searchScreen,
//     messagesScreen,
//     conversationScreen,
//     pDFViewerFromUrl,
//     appointmentScreen,
//     doctorScreen,
//     newAppointmentScreen,
//     newMessageScreen,
//     notificationsScreen,
//   };
// }

// class StackedRouter extends RouterBase {
//   @override
//   List<RouteDef> get routes => _routes;
//   final _routes = <RouteDef>[
//     RouteDef(Routes.splashScreen, page: SplashScreen),
//     RouteDef(Routes.onboardingScreen, page: OnboardingScreen),
//     RouteDef(Routes.signInScreen, page: SignInScreen),
//     RouteDef(Routes.forgotPasswordScreen, page: ForgotPasswordScreen),
//     RouteDef(Routes.signUpScreen, page: SignUpScreen),
//     RouteDef(Routes.signUpValidationScreen, page: SignUpValidationScreen),
//     RouteDef(Routes.homeScreen, page: HomeScreen),
//     RouteDef(Routes.profileScreen, page: ProfileScreen),
//     RouteDef(Routes.editingProfileScreen, page: EditingProfileScreen),
//     RouteDef(Routes.examsScreen, page: ExamsScreen),
//     RouteDef(Routes.appointmentsScreen, page: AppointmentsScreen),
//     RouteDef(Routes.drugstoresScreen, page: DrugstoresScreen),
//     RouteDef(Routes.doctorsScreen, page: DoctorsScreen),
//     RouteDef(Routes.searchScreen, page: SearchScreen),
//     RouteDef(Routes.messagesScreen, page: MessagesScreen),
//     RouteDef(Routes.conversationScreen, page: ConversationScreen),
//     RouteDef(Routes.pDFViewerFromUrl, page: PDFViewerFromUrl),
//     RouteDef(Routes.appointmentScreen, page: AppointmentScreen),
//     RouteDef(Routes.doctorScreen, page: DoctorScreen),
//     RouteDef(Routes.newAppointmentScreen, page: NewAppointmentScreen),
//     RouteDef(Routes.newMessageScreen, page: NewMessageScreen),
//     RouteDef(Routes.notificationsScreen, page: NotificationsScreen),
//   ];
//   @override
//   Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
//   final _pagesMap = <Type, StackedRouteFactory>{
//     SplashScreen: (data) {
//       return CupertinoPageRoute<CupertinoRoute<dynamic>>(
//         builder: (context) => SplashScreen(),
//         settings: data,
//       );
//     },
//     OnboardingScreen: (data) {
//       return CupertinoPageRoute<CupertinoRoute<dynamic>>(
//         builder: (context) => OnboardingScreen(),
//         settings: data,
//       );
//     },
//     SignInScreen: (data) {
//       return CupertinoPageRoute<CupertinoRoute<dynamic>>(
//         builder: (context) => SignInScreen(),
//         settings: data,
//       );
//     },
//     ForgotPasswordScreen: (data) {
//       return CupertinoPageRoute<CupertinoRoute<dynamic>>(
//         builder: (context) => ForgotPasswordScreen(),
//         settings: data,
//       );
//     },
//     SignUpScreen: (data) {
//       return CupertinoPageRoute<CupertinoRoute<dynamic>>(
//         builder: (context) => SignUpScreen(),
//         settings: data,
//       );
//     },
//     SignUpValidationScreen: (data) {
//       return MaterialPageRoute<MaterialRoute<dynamic>>(
//         builder: (context) => SignUpValidationScreen(),
//         settings: data,
//       );
//     },
//     HomeScreen: (data) {
//       return MaterialPageRoute<MaterialRoute<dynamic>>(
//         builder: (context) => HomeScreen(),
//         settings: data,
//       );
//     },
//     ProfileScreen: (data) {
//       return CupertinoPageRoute<CupertinoRoute<dynamic>>(
//         builder: (context) => ProfileScreen(),
//         settings: data,
//       );
//     },
//     EditingProfileScreen: (data) {
//       return CupertinoPageRoute<CupertinoRoute<dynamic>>(
//         builder: (context) => EditingProfileScreen(),
//         settings: data,
//       );
//     },
//     ExamsScreen: (data) {
//       return CupertinoPageRoute<CupertinoRoute<dynamic>>(
//         builder: (context) => ExamsScreen(),
//         settings: data,
//       );
//     },
//     AppointmentsScreen: (data) {
//       return CupertinoPageRoute<CupertinoRoute<dynamic>>(
//         builder: (context) => AppointmentsScreen(),
//         settings: data,
//       );
//     },
//     DrugstoresScreen: (data) {
//       return CupertinoPageRoute<CupertinoRoute<dynamic>>(
//         builder: (context) => DrugstoresScreen(),
//         settings: data,
//       );
//     },
//     DoctorsScreen: (data) {
//       return CupertinoPageRoute<CupertinoRoute<dynamic>>(
//         builder: (context) => DoctorsScreen(),
//         settings: data,
//       );
//     },
//     SearchScreen: (data) {
//       var args = data.getArgs<SearchScreenArguments>(
//         orElse: () => SearchScreenArguments(),
//       );
//       return CupertinoPageRoute<CupertinoRoute<dynamic>>(
//         builder: (context) => SearchScreen(
//           key: args.key,
//           filter: args.filter,
//         ),
//         settings: data,
//       );
//     },
//     MessagesScreen: (data) {
//       return CupertinoPageRoute<CupertinoRoute<dynamic>>(
//         builder: (context) => MessagesScreen(),
//         settings: data,
//       );
//     },
//     ConversationScreen: (data) {
//       var args = data.getArgs<ConversationScreenArguments>(nullOk: false);
//       return CupertinoPageRoute<CupertinoRoute<dynamic>>(
//         builder: (context) => ConversationScreen(
//           key: args.key,
//           question: args.question,
//         ),
//         settings: data,
//       );
//     },
//     PDFViewerFromUrl: (data) {
//       var args = data.getArgs<PDFViewerFromUrlArguments>(nullOk: false);
//       return CupertinoPageRoute<CupertinoRoute<dynamic>>(
//         builder: (context) => PDFViewerFromUrl(
//           key: args.key,
//           url: args.url,
//           title: args.title,
//         ),
//         settings: data,
//       );
//     },
//     AppointmentScreen: (data) {
//       var args = data.getArgs<AppointmentScreenArguments>(nullOk: false);
//       return MaterialPageRoute<MaterialRoute<dynamic>>(
//         builder: (context) => AppointmentScreen(
//           key: args.key,
//           appointment: args.appointment,
//         ),
//         settings: data,
//       );
//     },
//     DoctorScreen: (data) {
//       var args = data.getArgs<DoctorScreenArguments>(nullOk: false);
//       return MaterialPageRoute<MaterialRoute<dynamic>>(
//         builder: (context) => DoctorScreen(
//           key: args.key,
//           doctor: args.doctor,
//         ),
//         settings: data,
//       );
//     },
//     NewAppointmentScreen: (data) {
//       var args = data.getArgs<NewAppointmentScreenArguments>(
//         orElse: () => NewAppointmentScreenArguments(),
//       );
//       return MaterialPageRoute<MaterialRoute<dynamic>>(
//         builder: (context) => NewAppointmentScreen(
//           key: args.key,
//           doctor: args.doctor,
//         ),
//         settings: data,
//       );
//     },
//     NewMessageScreen: (data) {
//       return MaterialPageRoute<MaterialRoute<dynamic>>(
//         builder: (context) => NewMessageScreen(),
//         settings: data,
//       );
//     },
//     NotificationsScreen: (data) {
//       return MaterialPageRoute<MaterialRoute<dynamic>>(
//         builder: (context) => NotificationsScreen(),
//         settings: data,
//       );
//     },
//   };
// }

// /// ************************************************************************
// /// Arguments holder classes
// /// *************************************************************************

// /// SearchScreen arguments holder class
// class SearchScreenArguments {
//   final Key? key;
//   final Searchable? filter;
//   SearchScreenArguments({this.key, this.filter});
// }

// /// ConversationScreen arguments holder class
// class ConversationScreenArguments {
//   final Key? key;
//   final QuestionModel question;
//   ConversationScreenArguments({this.key, required this.question});
// }

// /// PDFViewerFromUrl arguments holder class
// class PDFViewerFromUrlArguments {
//   final Key? key;
//   final String url;
//   final String title;
//   PDFViewerFromUrlArguments({this.key, required this.url, required this.title});
// }

// /// AppointmentScreen arguments holder class
// class AppointmentScreenArguments {
//   final Key? key;
//   final AppointmentModel appointment;
//   AppointmentScreenArguments({this.key, required this.appointment});
// }

// /// DoctorScreen arguments holder class
// class DoctorScreenArguments {
//   final Key? key;
//   final DoctorModel doctor;
//   DoctorScreenArguments({this.key, required this.doctor});
// }

// /// NewAppointmentScreen arguments holder class
// class NewAppointmentScreenArguments {
//   final Key? key;
//   final DoctorModel? doctor;
//   NewAppointmentScreenArguments({this.key, this.doctor});
// }
