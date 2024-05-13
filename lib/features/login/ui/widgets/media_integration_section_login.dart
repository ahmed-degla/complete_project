import 'package:flutter/material.dart';
import '../../../../core/widgets/integration_media_container.dart';

class MediaIntegrationSectionLogIn extends StatelessWidget {
  const MediaIntegrationSectionLogIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IntegrationMediaContainer(
          imagePath: 'assets/images/google_logo.png',
        ),
        IntegrationMediaContainer(
          imagePath: 'assets/images/facebook_logo.png',
        ),
        IntegrationMediaContainer(
          imagePath: 'assets/images/apple_logo.png',
        ),
      ],
    );
  }
}
