import 'package:bookly_app/Features/splash/presntation/view_model/views/widgets/sliding_text_animated.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/asset_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> SlidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigteToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetData.logo),
          const SizedBox(
            height: 6,
          ),
          SlidingTextAnimated(SlidingAnimation: SlidingAnimation),
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    SlidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  void navigteToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      // Get.to(
      //   () => const HomeView(),
      //   transition: Transition.fade,
      //   duration: kTransationDuration,
      // );
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }
}
