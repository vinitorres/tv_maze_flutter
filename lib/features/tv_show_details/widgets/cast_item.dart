import 'package:flutter/material.dart';
import 'package:tv_shows_app/core/data/domain/entities/actor.dart';
import 'package:tv_shows_app/features/actor_details.dart/actor_details_page.dart';

class CastItem extends StatelessWidget {
  const CastItem({super.key, required this.actor});

  final Actor actor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ActorDetailsPage(actor: actor)),
        );
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
