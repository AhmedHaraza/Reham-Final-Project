import 'package:flutter/material.dart';
import 'package:online_school_admission/onboardingScreen.dart';
import '../../features/Frame1000003451_book_a_bus/featur/view/Frame1000003451_book_a_bus_view.dart';
import '../../features/page17_admission_page/featur/view/page17_admission_page_view.dart';
import '../../features/page18_request/featur/view/page18_request_view.dart';
import '../../features/page21_payment_successful/featur/view/page21_payment_successful_view.dart';
import '../../features/page22_booking_interview/featur/view/page22_booking_interview_view.dart';
import '../../features/page42_admission_page/featur/view/page42_admission_page_view.dart';
import '../../features/page43_admission_page/featur/view/page43_admission_pageview.dart';
import '../../features/profile_school/application_submit_page_one/featur/view/application_submit_page_one_view.dart';
import '../../features/profile_school/application_submit_page_tow/featur/view/application_submit_page_tow_view.dart';
import '../../features/profile_school/payment_method/featur/view/payment_method_view.dart';
import '../../parent/page10_home/featur/view/home_page_view.dart';
import '../../quiz/quiz_screen.dart';
import '../../school/school_home/featur/view/home_page_view.dart';
import 'routers.dart';

class AppRouter {
  Route generateRoute(RouteSettings setting) {
     final argument = setting.arguments;
    switch (setting.name) {
      case Routers.onbording :
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routers.applicationSubmitPageTow:
        return MaterialPageRoute(
          builder: (_) => const ApplicationSubmitPageTowView(),
        );
      case Routers.paymentMethod:
        return MaterialPageRoute(
          builder: (_) => const PaymentMethodView(),
        );
      case Routers.HomeView:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
        );
      case Routers.HomeView:
        return MaterialPageRoute(
          builder: (_) => const HomeView2(),
        );
      case Routers.page17AdmissionPage:
        return MaterialPageRoute(
          builder: (_) => const Page17AdmissionPageView(),
        );
      case Routers.page42AdmissionPage:
        return MaterialPageRoute(
          builder: (_) => const Page42AdmissionPageView(),
        );
      case Routers.page43Admission:
        return MaterialPageRoute(
          builder: (_) => const Page43Admissionview(),
        );
      case Routers.frame1000003451BookABus:
        return MaterialPageRoute(
          builder: (_) => const Frame1000003451BookABusView(),
        );

      case Routers.page18Request:
        return MaterialPageRoute(
          builder: (_) => const Page18RequestView(),
        );

      case Routers.page21PaymentSuccessful:
        return MaterialPageRoute(
          builder: (_) => const Page21PaymentSuccessfulView(),
        );
      case Routers.page22BookingInterview:
        return MaterialPageRoute(
          builder: (_) => const Page22BookingInterviewView(),
        );


      case Routers.QuizScreen:
        return MaterialPageRoute(
          builder: (_) => QuizScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No Route defined for ${setting.name}"),
            ),
          ),
        );
    }
  }
}
