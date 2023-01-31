class Actor {

  final int id;
  final String name;
  final String country;
  final String? thumb;
  final String? poster;
  final DateTime? birthday;

  Actor({
    required this.id,
    required this.name,
    required this.country,
    this.thumb,
    this.poster,
    this.birthday,
  });


  factory Actor.fromJson(Map<String, dynamic> json){
    return Actor(
        id: json['id'],
        name: json['name'],
        thumb: json['image']?['medium'] ?? '',
        poster: json['image']?['original'] ?? '',
        country: json['country']?['name'] ?? '',
        birthday: json['birthday'] != null ? DateTime.parse(json['birthday']) : null,
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
      'country': country,
      'birthday': birthday?.toIso8601String(),
    };
  }

  Actor copy(){
    return Actor(
      id: id,
      name: name,
      country: country,
      thumb: thumb,
      poster: poster,
      birthday: birthday
    );
  }
}