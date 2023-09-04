import 'package:flutter/material.dart';
import 'package:tv_shows_app/entities/actor.dart';
import 'package:tv_shows_app/entities/episode.dart';
import 'package:tv_shows_app/entities/tv_show.dart';
import 'package:tv_shows_app/pages/actor_details.dart/actor_details_page.dart';
import 'package:tv_shows_app/pages/episode_details/episode_details_dialog.dart';
import 'package:tv_shows_app/pages/tv_show_details/tv_show_details_page.dart';
import 'package:tv_shows_app/navigation/navigation_routes.dart';
import 'package:tv_shows_app/pages/home/home_page.dart';

class NavigationRouter {
  static final navigatorKey = GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NavigationRoutes.home:
        return MaterialPageRoute(builder: (_) => HomePage());
      case NavigationRoutes.tvShowDetails:
        return MaterialPageRoute(
            builder: (_) =>
                TvShowDetailsPage(tvShow: (settings.arguments as TvShow)));
      case NavigationRoutes.episodeDetails:
        return PageRouteBuilder(
            opaque: false,
            fullscreenDialog: true,
            barrierDismissible: true,
            barrierColor: Colors.transparent,
            pageBuilder: (_, __, ___) =>
                EpisodeDetailsDialog(episode: settings.arguments as Episode));
      case NavigationRoutes.actorDetails:
        return MaterialPageRoute(
            builder: (_) =>
                ActorDetailsPage(actor: (settings.arguments as Actor)));
      default:
        return MaterialPageRoute(builder: (_) => HomePage());
    }
  }

  // static goToTvShowDetails(BuildContext context, TvShow tvShow) {
  //   Navigator.of(context)
  //       .pushNamed(NavigationRoutes.tvShowDetails, arguments: tvShow);
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
