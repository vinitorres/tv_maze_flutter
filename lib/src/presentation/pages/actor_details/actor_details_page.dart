//create page with actor picture, name, and list of series he played in

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/person.dart';
import '../../../infrastructure/injection/dependency_injection.dart';
import '../../../shared/constants/app_colors.dart';
import '../../../shared/constants/app_values.dart';
import '../../i18n/i18n.dart';
import '../../i18n/translations.g.dart';
import '../../widgets/tv_shows_list.dart';
import 'actor_details_view_model.dart';

class ActorDetailsPage extends StatefulWidget {
  const ActorDetailsPage({super.key, required this.actor});

  final Person actor;

  @override
  State<ActorDetailsPage> createState() => _ActorDetailsPageState();
}

class _ActorDetailsPageState extends State<ActorDetailsPage> {
  final cubit = getIt.get<ActorDetailsViewModel>();

  @override
  void initState() {
    cubit.loadActorSeries(widget.actor.id);
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
                  image: NetworkImage(widget.actor.imageSource?.original ?? ''),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: AppValues.defaultMediumPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.actor.name,
                    style: TextStyle(
                      fontSize: AppValues.defaultLargerFontSize,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimaryColor,
                    ),
                  ),
                  SizedBox(height: AppValues.defaultLargerPadding),
                  Text(
                    tm.strings.tvShows,
                    style: TextStyle(
                      fontSize: AppValues.defaultMediumFontSize,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimaryColor,
                    ),
                  ),
                  SizedBox(height: AppValues.defaultLargerPadding),
                ],
              ),
            ),
            BlocBuilder<ActorDetailsViewModel, ActorDetailsState>(
              bloc: cubit,
              builder: (context, state) {
                if (state.status == ActorDetailsStatus.loading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state.status == ActorDetailsStatus.loaded) {
                  return TvShowList(
                    tvShowList: state.actorSeries ?? [],
                    scrollable: false,
                  );
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
