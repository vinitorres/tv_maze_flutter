//create page with actor picture, name, and list of series he played in

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/person.dart';
import '../../../shared/injection/dependency_manager.dart';
import '../../i18n/i18n.dart';
import '../../theme/theme.dart';
import '../../widgets/tv_shows_list_widget/tv_shows_list.dart';
import 'actor_details_state.dart';
import 'actor_details_view_model.dart';

class ActorDetailsPage extends StatefulWidget {
  const ActorDetailsPage({super.key, required this.actor});

  final Person actor;

  @override
  State<ActorDetailsPage> createState() => _ActorDetailsPageState();
}

class _ActorDetailsPageState extends State<ActorDetailsPage> {
  final viewModel = DM.get<ActorDetailsViewModel>();

  @override
  void initState() {
    super.initState();
    viewModel.loadActorSeries(widget.actor.id);
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
                horizontal: AppSizes.defaultMediumPadding,
                vertical: AppSizes.defaultMediumPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.actor.name,
                    style: TextStyle(
                      fontSize: AppSizes.defaultLargerFontSize,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimaryColor,
                    ),
                  ),
                  SizedBox(height: AppSizes.defaultLargerPadding),
                  Text(
                    tm.strings.tvShows,
                    style: TextStyle(
                      fontSize: AppSizes.defaultMediumFontSize,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
            SafeArea(
              top: false,
              child: BlocBuilder<ActorDetailsViewModel, ActorDetailsState>(
                bloc: viewModel,
                builder: (context, state) {
                  return switch (state) {
                    ActorDetailsStateLoaded(:final actorSeries) =>
                      TvShowList(tvShowList: actorSeries, scrollable: false),
                    ActorDetailsStateError(:final message) =>
                      Center(child: Text(message)),
                    _ => Center(child: CircularProgressIndicator()),
                  };
                },
              ),
            ),
            SizedBox(height: AppSizes.defaultLargerPadding),
          ],
        ),
      ),
    );
  }
}
