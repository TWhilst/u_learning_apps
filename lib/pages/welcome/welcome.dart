import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:u_learning_app/pages/welcome/notifier/welcome_notifier.dart';
import 'package:u_learning_app/pages/welcome/widgets.dart';

// final indexProvider = StateProvider<int>((ref) => 0);

class Welcome extends ConsumerWidget {
  Welcome({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexDotProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 30.h),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              // Three welcome pages
              PageView(
                controller: _controller,
                onPageChanged: (value) {
                  ref.read(indexDotProvider.notifier).changeIndex(value);
                },
                children: [
                  appOnboardingPage(
                    _controller,
                    imagePath: "assets/images/reading.png",
                    title: "First see learning",
                    subtitle:
                        "Forget about the paper, now learning all in one place",
                    index: 1,
                    data: "Next",
                    context,
                  ),
                  appOnboardingPage(
                    _controller,
                    imagePath: "assets/images/man.png",
                    title: "Connect with everyone",
                    subtitle:
                        "Always keep in touch with your tutor and friends. Let's get connected",
                    index: 2,
                    data: "Next",
                    context,
                  ),
                  appOnboardingPage(
                    _controller,
                    imagePath: "assets/images/boy.png",
                    title: "Always Fascinated Learning",
                    subtitle:
                        "Anywhere, anytime, The time is at your discretion. So study anywhere you can",
                    index: 3,
                    data: "Get started",
                    context,
                  ),
                ],
              ),
              // Dots indicator
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.09,
                child: DotsIndicator(
                  position: index,
                  dotsCount: 3,
                  mainAxisAlignment: MainAxisAlignment.center,
                  decorator: DotsDecorator(
                    size: const Size.square(9),
                    activeSize: const Size(24, 8),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.w)
                    )
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
