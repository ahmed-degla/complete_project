
import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Image.asset('assets/images/person.png'),
        ),
        Positioned(right: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: (){},
              child: Image.asset(
                  'assets/images/change_profile_icon.png'),
            ))
      ],
    );
  }
}
