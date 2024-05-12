import 'package:complete_project/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          'assets/svg/background_logo3x.svg',
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset('assets/images/doctor.png'),
        ),
        Positioned(
          bottom: 30,
          left: 0,
    right: 0,
          child: Text(

          textAlign: TextAlign.center,
            'Best Doctor \n Appointment App',

            style: TextStyles.font32Bluebold.copyWith(height: 1.4),
          ),
        )
      ],
    );
  }
}
