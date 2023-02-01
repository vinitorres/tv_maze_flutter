class Episode {

  final int id;
  final String name;
  final int number;
  final int season;
  final String? thumb;
  final String? poster;
  final DateTime? airs;
  final String summary;

  Episode({
    required this.id,
    required this.name,
    required this.number,
    required this.season,
    this.thumb,
    this.poster,
    this.airs,
    required this.summary
  });

  factory Episode.fromJson(Map<String, dynamic> json){
    return Episode(
        id: json['id'],
        name: json['name'],
        thumb: json['image']?['medium'] ?? '',
        poster: json['image']?['original'] ?? '',
        number: json['number'],
        season: json['season'],
        airs: json['airstamp'] != null ? DateTime.parse(json['airstamp']) : null,
        summary: json['summary'] ?? ''
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'id': id,
      'name': name,
      'image':{
        'medium': thumb,
        'original': poster
      },
      'number': number,
      'season': season,
      'airstamp': airs?.toIso8601String(),
      'summary': summary
    };
  }
}