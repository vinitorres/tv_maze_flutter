import 'package:flutter/material.dart';
import 'package:tv_shows_app/entities/actor.dart';
import 'package:tv_shows_app/pages/actor_details.dart/actor_details_page.dart';
import 'package:tv_shows_app/navigation/navigation_routes.dart';

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
              height: 8,
            ),
            Text(
              actor.name,
              style: TextStyle(color: Colors.white, fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
