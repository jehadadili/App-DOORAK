import 'package:doorak/src/core/style/icon/icon_app.dart';
import 'package:doorak/src/core/style/text/text.dart';
import 'package:doorak/src/core/widgets/custom_text_fiald.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/style/image/image_app.dart';

class LoginInfoCard extends StatelessWidget {
  final TextEditingController phoneController;
  final TextEditingController paswwordController;

  const LoginInfoCard(
      {super.key,
      required this.phoneController,
      required this.paswwordController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.h,
        ),
        Text(
          AppText.loginInfoEN,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: ColorApp.black.withOpacity(0.80),
              ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  width: 85.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: ColorApp.greydark.withOpacity(0.10),
                      borderRadius: BorderRadius.circular(6.r)),
                  child: Row(
                    children: [
                      Image.asset(
                        ImageApp.jo,
                        width: 42.w,
                        height: 32.h,
                      ),
                      Text(
                        "+962",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: ColorApp.black.withOpacity(0.25)),
                      ),
                    ],
                  )),
              CustomTextFieldWidgets(
                height: 40,
                width: 180.w,
                labelText: AppText.labelPhoneEN,
                controller: phoneController,
                hintText: AppText.hintPhoneEN,
                keyboardType: TextInputType.phone,
                validator: (p0) {
                  return null;
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.w),
          child: CustomTextFieldWidgets(
            height: 40,
            labelText: AppText.labelPasswordEN,
            prefixIcon: const Icon(IconApp.lock),
            controller: phoneController,
            hintText: AppText.hintPhoneEN,
            keyboardType: TextInputType.phone,
            validator: (p0) {
              return null;
            },
          ),
        ),
      
      ],
    );
  }
}
