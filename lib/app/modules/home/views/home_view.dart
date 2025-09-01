import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pixtagger/app/utils/image_utils.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(ImageUtils.background), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              SizedBox(width: 100.w),
              Container(
                margin: EdgeInsets.only(top: 160.h),
                child: Stack(
                  children: [
                    Stack(
                      children: [
                        Center(
                          child: Image.asset(ImageUtils.frame, height: 250.h, width: 225.w),
                        ),
                      ],
                    ),
                    GetBuilder<HomeController>(
                      builder: (cnt) {
                        return Center(
                          child: MaterialButton(
                            onPressed: () => controller.onPickImage(ImageSource.gallery),
                            onLongPress: () => controller.onPickImage(ImageSource.camera),
                            child: Container(
                              margin: EdgeInsets.only(top: 30.h),
                              child: controller.image != null
                                  ? Image.file(controller.image!, width: 122.w, height: 180.h, fit: BoxFit.fill)
                                  : SizedBox(
                                      width: 140.w,
                                      height: 150.h,
                                      child: Icon(Icons.camera_alt, color: Colors.grey[800]),
                                    ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.h),
                child: Obx(
                  () => Text(
                    controller.result.value,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: "Quicksand", fontSize: 20.sp),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
