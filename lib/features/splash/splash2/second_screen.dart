import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place/base.dart';
import 'package:market_place/core/style/app_color.dart';
import 'package:market_place/core/style/text_style.dart';
import 'package:market_place/core/widgets/custome_button.dart';
import 'package:market_place/features/splash/splash2/scond_screen_navigator.dart';
import 'package:market_place/features/splash/splash2/second_screen_view_model.dart';

import '../../../core/widgets/custom_app_bar.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  static const String routName = "Second";

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends BaseView<SecondScreen, SecondScreenViewModel>
    implements SecondScreenNavigator {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: CustomAppBar(),
          backgroundColor: Colors.transparent,
          elevation: 0),
      body: Container(
        width: 410.w,
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
          Image.asset("assets/images/welcome.png",height:242.h ,width:326.w ,),
          SizedBox(height: 27.h,),
          Text("Market Place",style: AppTexts.roboto23,textAlign: TextAlign.left),
          SizedBox(height: 8.h,),
          Text("Everything you need is in one place",
              style: AppTexts.roboto20),
          SizedBox(height: 57.h,),
          CustomeButton(AppColor.red, "Login", () { }),
          SizedBox(height: 27.h,),
              Container( decoration: BoxDecoration(
                  border: Border.all(
                      color: AppColor.red),borderRadius: BorderRadius.all(Radius.circular(26)))
                  ,child: CustomeButton(Colors.white, "Regester", () { })),
    ]),),
    );
  }

  @override
  SecondScreenViewModel initViewModel() {
    return SecondScreenViewModel();
  }

  @override
  onButtonClick() {}
}
