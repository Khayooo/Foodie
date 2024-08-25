import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/constants.dart';

class LoginScreenTopImage extends StatelessWidget {
  const LoginScreenTopImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Welcome to foodie",
          style: Theme.of(context).textTheme.headlineLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: kDefaultPadding,
        ),
        Row(
          children: [
            const Spacer(),
            SizedBox(
              width: 300,
              height: 300,
              child: SvgPicture.asset('assets/icons/delivery.svg'),
            ),
            const Spacer()
          ],
        ),
        const SizedBox(
          height: kDefaultPadding * 2,
        )
      ],
    );
  }
}
