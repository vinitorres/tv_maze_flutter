import 'package:flutter/material.dart';
import 'package:tv_shows_app/core/data/domain/entities/episode.dart';
import 'package:tv_shows_app/features/episode_details/episode_details_dialog.dart';
import 'package:tv_shows_app/features/tv_show_details/widgets/episode_image_placeholder.dart';

class EpisodeItem extends StatelessWidget {
  const EpisodeItem({Key? key, required this.episode}) : super(key: key);

  final Episode episode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => EpisodeDetailsDialog(episode: episode),
        );
      },
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1, color: Colors.grey.withAlpha(80)),
        ),
        padding: const EdgeInsets.only(bottom: 8),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .2,
          width: MediaQuery.of(context).size.width * .6,
          child: Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .17,
                child: episode.thumb == null
                    ? EpisodeImagePlaceholder()
                    : Image(
                        fit: BoxFit.fill,
                        image: NetworkImage(episode.thumb ?? ''),
                      ),
              ),
              Column(
                children: [
                  Spacer(),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text('${episode.number} : ${episode.name}',
                          style: TextStyle(color: Colors.white))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
