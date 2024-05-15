import 'package:code_cubicle/src/back-end/page_tran.dart';
import 'package:code_cubicle/src/back-end/utils/routes/route_const.dart';
import 'package:code_cubicle/src/front-end/views/home_pages/bloodbanks/bloodbank.dart';
import 'package:code_cubicle/src/front-end/views/home_pages/donors/donor.dart';
import 'package:code_cubicle/src/front-end/views/register/more_info.dart';
import 'package:flutter/material.dart';

import '../../../front-end/views/forgot_pass/forgot_pass.dart';
import '../../../front-end/views/forgot_pass/reset_pass.dart';
import '../../../front-end/views/login/login.dart';
import '../../../front-end/views/main_home/home.dart';
import '../../../front-end/views/onboarding/onboarding.dart';
import '../../../front-end/views/register/register.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterConstant.getstarted:
        return slidePageRoute(const OnBoardingScreen());
      case RouterConstant.login:
        return slidePageRoute(const LogInScreen());
      case RouterConstant.register:
        return slidePageRoute(const SignUpScreen());
      case RouterConstant.mainhome:
        return slidePageRoute(const MainHomeScreen());
      case RouterConstant.forgotpassword:
        return slidePageRoute(const ForgotPassword());
      case RouterConstant.moreinfo:
        return slidePageRoute(const UserMoreInfo());
      case RouterConstant.donorlist:
        return slidePageRoute(const DonorInfo());
      case RouterConstant.bloodbank:
        return slidePageRoute(const BloodBankScreen());
      case RouterConstant.resetpassword:
        return slidePageRoute(const ResetPasswordScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('No route found'),
            ),
          ),
        );
    }
  }
}
