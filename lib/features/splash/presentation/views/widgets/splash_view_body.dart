import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';

class SplashViewBody extends StatelessWidget{
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [Image.asset(AssetsData.logo),

      ],
    );
  }

}