import 'package:flutter/material.dart';

import '../../../../domain/entities/actor.dart';
import '../../../../shared/constants/app_values.dart';
import 'cast_item.dart';

class CastList extends StatelessWidget {
  const CastList({super.key, required this.cast});

  final List<Actor> cast;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: cast.length,
        itemBuilder: (context, index) => CastItem(
          actor: cast[index],
        ),
        separatorBuilder: (context, index) =>
            SizedBox(width: AppValues.defaultLargerPadding),
      ),
    );
  }
}
