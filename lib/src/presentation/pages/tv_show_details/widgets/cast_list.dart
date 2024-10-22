import 'package:flutter/material.dart';
import 'package:tv_shows_app/src/domain/entities/actor.dart';
import 'package:tv_shows_app/src/presentation/pages/tv_show_details/widgets/cast_item.dart';
import 'package:tv_shows_app/src/shared/constants/app_values.dart';

class CastList extends StatelessWidget {
  const CastList({super.key, required this.cast});

  final List<Actor> cast;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
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
      ),
    );
  }
}
