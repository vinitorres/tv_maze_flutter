import 'package:flutter/material.dart';

import '../domain/domain.dart';
import '../presentation/pages/actor_details/actor_details_page.dart';
import '../presentation/pages/episode_details/episode_details_dialog.dart';
import '../presentation/pages/home/home_page.dart';
import '../presentation/pages/tv_show_details/tv_show_details_page.dart';
import 'navigation_routes.dart';

class NavigationRouter {
  static final navigatorKey = GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NavigationRoutes.home:
        return MaterialPageRoute(builder: (_) => HomePage());
      case NavigationRoutes.tvShowDetails:
        return MaterialPageRoute(
          builder: (_) =>
              TvShowDetailsPage(tvShow: (settings.arguments as TvShow)),
        );
      case NavigationRoutes.episodeDetails:
        return PageRouteBuilder(
          opaque: false,
          fullscreenDialog: true,
          barrierDismissible: true,
          barrierColor: Colors.transparent,
          pageBuilder: (_, __, ___) =>
              EpisodeDetailsDialog(episode: settings.arguments as Episode),
        );
      case NavigationRoutes.actorDetails:
        return MaterialPageRoute(
          builder: (_) =>
              ActorDetailsPage(actor: (settings.arguments as Person)),
        );
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
