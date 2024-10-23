import 'package:flutter/material.dart';

import '../../../../domain/entities/actor.dart';
import '../../../../navigation/navigation_routes.dart';
import '../../../../shared/constants/app_values.dart';

class CastItem extends StatelessWidget {
  const CastItem({super.key, required this.actor});

  final Actor actor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          NavigationRoutes.actorDetails,
          arguments: actor,
        );
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.white.withOpacity(0.5),
            backgroundImage: NetworkImage(actor.thumb ?? ''),
          ),
          SizedBox(
            height: AppValues.defaultMediumPadding,
          ),
          Text(
            actor.name,
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
