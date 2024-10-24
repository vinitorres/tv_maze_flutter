import 'package:flutter/material.dart';

import '../../../../domain/entities/person.dart';
import '../../../../navigation/navigation_routes.dart';
import '../../../../shared/constants/app_values.dart';

class CastItem extends StatelessWidget {
  const CastItem({super.key, required this.person});

  final Person person;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          NavigationRoutes.actorDetails,
          arguments: person,
        );
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.white.withOpacity(0.5),
            backgroundImage: NetworkImage(person.imageSource?.original ?? ''),
          ),
          SizedBox(
            height: AppValues.defaultMediumPadding,
          ),
          Text(
            person.name,
            style: TextStyle(
              color: Colors.white,
              fontSize: AppValues.defaultSmallFontSize,
            ),
          ),
        ],
      ),
    );
  }
}
