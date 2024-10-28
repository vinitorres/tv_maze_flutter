import 'package:flutter/material.dart';

import '../../../../../../domain/entities/person.dart';
import '../../../../../theme/app_sizes.dart';
import 'cast_item.dart';

class CastList extends StatelessWidget {
  const CastList({super.key, required this.cast});

  final List<Person> cast;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.defaultLargerPadding,
      ),
      itemCount: cast.length,
      itemBuilder: (context, index) => CastItem(
        person: cast[index],
      ),
      separatorBuilder: (context, index) =>
          SizedBox(width: AppSizes.defaultLargerPadding),
    );
  }
}
