import 'package:course_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'on_boarding_page.dart';

class OnboardingPageView extends StatefulWidget {
  final PageController controller;
  final Function(int) onPageChanged;
  final void Function()? onTap;

   const OnboardingPageView({
    super.key,
    required this.controller,
    required this.onPageChanged,
    required this.onTap,
  });

  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {


  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: widget.controller,
      onPageChanged: widget.onPageChanged,
      children: [
        OnboardingPage(
            onTap: widget.onTap,
            image:"assets/images/MV5BNTgxYzgwMDItNWUzYy00M2FhLWFjODQtODEyOGJlNzZiMjExXkEyXkFqcGc@._V1_.jpg",
            title: "Search and Rescue",
            subTitle:"Robots equipped with thermal cameras and sensors are used to locate trapped individuals in burning buildings, allowing for safer rescue operations"),
        OnboardingPage(
          onTap: widget.onTap,
          image: "assets/images/amptec_blog_waterfireextinguishers1.jpg.webp",
          title: "Fire Extinguishing",
          subTitle:
          "Some robots are designed with firefighting capabilities, enabling them to reach fire hotspots and suppress flames without putting firefighters at risk.",
        ),

        OnboardingPage(
          onTap: widget.onTap,
          image: "assets/images/171002-M-DL117-0063.JPG",
          title: "Damage Assessment",
          subTitle:
          "Robots collect data during firefighting operations to assist in planning strategies and analyzing fire behavior, improving overall firefighting effectiveness",
        ),
      ],
    );
  }
}
