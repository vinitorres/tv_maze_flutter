import 'package:flutter/material.dart';
import 'package:tv_shows_app/src/domain/entities/actor.dart';
import 'package:tv_shows_app/src/navigation/navigation_routes.dart';
import 'package:tv_shows_app/src/shared/constants/app_values.dart';

class CastItem extends StatelessWidget {
  const CastItem({super.key, required this.actor});

  final Actor actor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, NavigationRoutes.actorDetails,
            arguments: actor);
      },
      child: Container(
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
                  fontSize: AppValues.defaultSmallFontSize),
            )
          ],
        ),
      ),
    );
  }
}
