// import 'package:task1/Providers/auth.dart';

// class RouteGuard extends AutoRedirectGuard {
//   final User authService;
//   RouteGuard(this.authService) {
//     authService.addListener(() {
//       if (!authService.vaidate) {
//         revaluate();
//       }
//     });
//   }
//   void onNavigation(NavigationResolver resolver, StackRouter router) {
//     if (authService.vaidate) return resolver.next();
//     // TODO: Navigate to login screen
//   }
// }
