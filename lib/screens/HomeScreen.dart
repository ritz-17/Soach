import 'package:flutter/material.dart';
import 'package:testing/screens/ApplyForm.dart';
import 'package:testing/screens/StatusForm.dart';
import 'package:testing/screens/WelcomeScreen.dart';
import 'package:testing/theme/app_decoration.dart';
import 'package:testing/theme/custom_button_style.dart';
import 'package:testing/theme/theme_helper.dart';
import 'package:testing/widgets/custom_outlined_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bgfinal.png"),
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 70),
              _buildTwelve(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwelve(BuildContext context) {
    return SizedBox(
      height: 323,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 22,
              ),
              decoration: AppDecoration.outlineGreenA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8),
                  Divider(
                    indent: 5,
                  ),
                  SizedBox(height: 17),
                  Divider(
                    indent: 5,
                  ),
                  SizedBox(height: 18),
                  Divider(
                    indent: 5,
                    endIndent: 43,
                  ),
                  SizedBox(height: 17),
                  SizedBox(
                    child: Divider(
                      indent: 5,
                    ),
                  ),
                  SizedBox(height: 34),
                  Padding(
                    padding: EdgeInsets.only(left: 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: CustomOutlinedButton(
                            text: "Apply",
                            margin: EdgeInsets.only(right: 11),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context)=>  ApplyForm()
                              ),
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: CustomOutlinedButton(
                            text: "Status",
                            margin: EdgeInsets.only(left: 11),
                            buttonStyle: CustomButtonStyles.outlineOrangeA,
                            buttonTextStyle: theme.textTheme.titleMedium!,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context)=>  StatusFrom()
                              ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


}

