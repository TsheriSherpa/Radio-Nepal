class HomeItems {
  String? slug;
  String? title;
  String? logo;
  String? frequency;
  String? description;

  HomeItems(
      {this.slug, this.title, this.logo, this.frequency, this.description});

  HomeItems.fromJson(dynamic json) {
    slug = json['slug'];
    title = json['title'];
    logo = json['logo'];
    frequency = json['frequency'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['slug'] = slug;
    map['title'] = title;
    map['logo'] = logo;
    map['frequency'] = frequency;
    map['description'] = description;
    return map;
  }
}
