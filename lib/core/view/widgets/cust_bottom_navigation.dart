import 'package:flutter/material.dart';
import 'package:to_do_app/core/constants/app_image.dart';
import 'package:to_do_app/core/constants/app_text.dart';

class CustBottomNavigation extends StatelessWidget {
  String? imgHome, imgToDo, imgComplete, imgProfile;

  CustBottomNavigation({
    super.key,
    this.imgHome,
    this.imgToDo,
    this.imgComplete,
    this.imgProfile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 21, 21, 21),
            Color.fromARGB(255, 15, 15, 15),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: SizedBox(
              // height: MediaQuery.of(context).size.height * 0.1, //20,
              width: MediaQuery.of(context).size.width / 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "${imgHome ?? AppImage.bottomHomeOn}",
                    fit: BoxFit.contain,
                  ),
                  Text("${AppText.bottomHome}"),
                ],
              ),
            ),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: SizedBox(
              // height: 20,
              width: MediaQuery.of(context).size.width / 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "${imgToDo ?? AppImage.bottomToDoOff}",
                    fit: BoxFit.contain,
                  ),
                  Text("${AppText.bottomToDo}"),
                ],
              ),
            ),
            color: Colors.white,
          ),
          IconButton(
            iconSize: 3,
            onPressed: () {},
            icon: SizedBox(
              // height: 20,
              width: MediaQuery.of(context).size.width / 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "${imgComplete ?? AppImage.bottomCompleteOff}",
                    fit: BoxFit.contain,
                  ),
                  Text("${AppText.bottomComplete}"),
                ],
              ),
            ),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: SizedBox(
              // height: 20,
              width: MediaQuery.of(context).size.width / 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "${imgProfile ?? AppImage.bottomProfileOff}",
                    fit: BoxFit.contain,
                  ),
                  Text("${AppText.bottomProfile}"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
