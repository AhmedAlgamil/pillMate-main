import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pill_mate/core/utils/themes.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../generated/assets.dart';
import '../../../profile/presentation/store/profile_cubit.dart';
import '../../../profile/presentation/store/profile_state.dart';
import '../widgets/text_field_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mq = MediaQuery.of(context);
    ThemeData th = Theme.of(context);
    return BlocProvider(
      create: (BuildContext context) {
        return ProfileScreenCubit();
      },
      child: BlocConsumer<ProfileScreenCubit, ProfileState>(
        builder: (context, state) {
          ProfileScreenCubit profileScreenCubit =
              ProfileScreenCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                iconSize: 15,
                color: AppColors.black,
                onPressed: () {},
              ),
              titleTextStyle: TextStyle(color: AppColors.black),
              centerTitle: true,
              backgroundColor: AppColors.kPrimaryColor,
              title: const Text("Edit Profile"),
              elevation: 0,
            ),
            body: Container(
              color: AppColors.kPrimaryColor,
              width: mq.size.width,
              height: mq.size.height,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: mq.size.width,
                      height: mq.size.height * 0.76,
                      padding: const EdgeInsets.only(
                          left: 12.0, right: 10.0, bottom: 5.0, top: 5.0),
                      decoration: BoxDecoration(
                          color: th.scaffoldBackgroundColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          )),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: mq.size.height * 0.1,
                            ),
                            GestureDetector(
                              child: SizedBox(
                                width: mq.size.width * 0.7,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Change Profile",
                                    ),
                                    Icon(Icons.edit)
                                  ],
                                ),
                              ),
                            ),
                            TextFieldItem(
                              itemTextEditingController: profileScreenCubit.nameTextEditingController,
                              labelText: "Name",
                              prefixImage: Assets.imagesUser,
                              isDarkEnabled: profileScreenCubit.isDarkModeEnabled,
                            ),
                            TextFieldItem(
                              itemTextEditingController: profileScreenCubit.emailTextEditingController,
                              labelText: "email",
                              prefixImage: Assets.imagesSms,
                              isDarkEnabled: profileScreenCubit.isDarkModeEnabled,
                            ),
                            TextFieldItem(
                              itemTextEditingController: profileScreenCubit.phoneTextEditingController,
                              labelText: "phone",
                              prefixImage: Assets.imagesCall,
                              isDarkEnabled: profileScreenCubit.isDarkModeEnabled,

                            ),
                            TextFieldItem(
                              itemTextEditingController: profileScreenCubit.passwordTextEditingController,
                              labelText: "password",
                              prefixImage: Assets.imagesLock,
                              isObsecure: true,
                              isDarkEnabled: profileScreenCubit.isDarkModeEnabled,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 5.0, top: 5.0),
                              child: Material(
                                borderRadius: BorderRadius.circular(10.0),
                                color: AppColors.kPrimaryColor,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(10.0),
                                  onTap: () {},
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: mq.size.width,
                                    height: mq.size.height * 0.07,
                                    child: Text(
                                      "Add An Account",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: mq.size.height * 0.04,
                    left: mq.size.width / 3,
                    child: CircleAvatar(
                      child: Image(
                        image: AssetImage(Assets.imagesProfile),
                      ),
                      radius: 60,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        listener: (context, state) {},
      ),
    );
  }
}
