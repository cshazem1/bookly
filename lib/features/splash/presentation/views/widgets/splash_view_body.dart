import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SplashViewBody extends StatelessWidget{
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [Image.asset(AssetsData.logo).animate().fade(delay: 1000.ms).fade(),
        const SizedBox(height: 5,),
        const Text('Read Free Books',textAlign: TextAlign.center,).animate().fade(delay: 1700.ms).shake()
      ],
    );
  }

}