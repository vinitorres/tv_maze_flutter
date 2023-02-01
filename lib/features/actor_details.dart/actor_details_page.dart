//create page with actor picture, name, and list of series he played in

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tv_shows_app/features/tv_shows/widgets/tv_shows_list.dart';
import 'package:tv_shows_app/shared/constants/app_colors.dart';
import 'package:tv_shows_app/core/data/domain/entities/actor.dart';
import 'package:tv_shows_app/features/actor_details.dart/cubit/actor_details_cubit.dart';
import 'package:tv_shows_app/shared/injection/dependency_injection.dart';

class ActorDetailsPage extends StatefulWidget {
  ActorDetailsPage({super.key, required this.actor});

  final Actor actor;

  @override
  State<ActorDetailsPage> createState() => _ActorDetailsPageState();
}

class _ActorDetailsPageState extends State<ActorDetailsPage> {
  final cubit = getIt.get<ActorDetailsCubit>();

  @override
  void initState() {
    cubit.setActorId(widget.actor.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.actor.name, style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.actor.poster ?? ''),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.actor.name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimaryColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Tv Shows',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimaryColor,
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            BlocBuilder<ActorDetailsCubit, ActorDetailsState>(
              bloc: cubit,
              builder: (context, state) {
                if (state is ActorDetailsLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is ActorDetailsLoaded) {
                  return TvShowList(
                      tvShowList: state.actorSeries, onLoadMore: () {});
                }

                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
