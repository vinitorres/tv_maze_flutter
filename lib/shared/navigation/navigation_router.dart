import 'package:flutter/material.dart';
import 'package:tv_shows_app/core/domain/entities/actor.dart';
import 'package:tv_shows_app/core/domain/entities/episode.dart';
import 'package:tv_shows_app/features/actor_details.dart/actor_details_page.dart';
import 'package:tv_shows_app/features/episode_details/episode_details_dialog.dart';
import 'package:tv_shows_app/shared/navigation/navigation_routes.dart';
import 'package:tv_shows_app/features/home/home_page.dart';

class NavigationRouter {
  static final navigatorKey = GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NavigationRoutes.home:
        return MaterialPageRoute(builder: (_) => HomePage());

      case NavigationRoutes.episode:
        return PageRouteBuilder(
            opaque: false,
            fullscreenDialog: true,
            barrierDismissible: true,
            barrierColor: Colors.transparent,
            pageBuilder: (_, __, ___) =>
                EpisodeDetailsDialog(episode: settings.arguments as Episode));

      case NavigationRoutes.actor:
        return MaterialPageRoute(
            builder: (_) =>
                ActorDetailsPage(actor: (settings.arguments as Actor)));
      default:
        return MaterialPageRoute(builder: (_) => HomePage());
    }
  }

  // static void navigateTo(String routeName, {Object? arguments}) {
  //   Navigator.currentState.pushNamed(routeName, arguments: arguments);
  // }

  // static _onGoToTvShowEvent(_GoToTvShowEvent event) {
  //   Navigator.of(event.context).pushNamed(NavigationRoutes.tvShow,
  //       arguments: event.tvShowPageArguments);
  // }

  // static _onGoToEpisodeEvent(_GoToEpisodeEvent event) {
  //   Navigator.of(event.context)
  //       .pushNamed(NavigationRoutes.episode, arguments: event.episode);
  // }

  // static _onGoToActorEvent(_GoToActorEvent event) {
  //   Navigator.of(event.context)
  //       .pushNamed(NavigationRoutes.actor, arguments: event.actor);
  // }
}
