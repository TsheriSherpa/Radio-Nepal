import 'package:radio_nepal/core/model/home_api/home_item.dart';

class HomeResponse {
  String? name;
  String? slug;
  String? listViewType;
  List<HomeItems>? items;
  int? totalItems;
  int? perPageItems;
  String? prevPageUrl;
  String? nextPageUrl;
  int? totalPage;

  HomeResponse(
      {this.name,
      this.slug,
      this.listViewType,
      this.items,
      this.totalItems,
      this.perPageItems,
      this.prevPageUrl,
      this.nextPageUrl,
      this.totalPage});

  HomeResponse.fromJson(dynamic json) {
    name = json['name'];
    slug = json['slug'];
    listViewType = json['list_view_type'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(HomeItems.fromJson(v));
      });
    }
    totalItems = json['total_items'];
    perPageItems = json['per_page_items'];
    prevPageUrl = json['prev_page_url'];
    nextPageUrl = json['next_page_url'];
    totalPage = json['total_page'];
  }
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['slug'] = slug;
    map['list_view_type'] = listViewType;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    map['total_items'] = totalItems;
    map['per_page_items'] = perPageItems;
    map['prev_page_url'] = prevPageUrl;
    map['next_page_url'] = nextPageUrl;
    map['total_page'] = totalPage;
    return map;
  }
}
