class BannerEntity {
  List<BannerData> data = [];
  int? errorCode;
  String? errorMsg;

  BannerEntity({List<BannerData>? data, this.errorCode, this.errorMsg}) {
    if (data != null) {
      this.data = data;
    }
  }

  BannerEntity.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      (json['data'] as List).forEach((v) {
        data.add(BannerData.fromJson(v));
      });
    }
    errorCode = json['errorCode'];
    errorMsg = json['errorMsg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['data'] = this.data.map((v) => v.toJson()).toList();
    data['errorCode'] = this.errorCode;
    data['errorMsg'] = this.errorMsg;
    return data;
  }
}

class BannerData {
  String? imagePath;
  int? id;
  int? isVisible;
  String? title;
  int? type;
  String? url;
  String? desc;
  int? order;

  BannerData({
    this.imagePath,
    this.id,
    this.isVisible,
    this.title,
    this.type,
    this.url,
    this.desc,
    this.order,
  });

  BannerData.fromJson(Map<String, dynamic> json) {
    imagePath = json['imagePath'];
    id = json['id'];
    isVisible = json['isVisible'];
    title = json['title'];
    type = json['type'];
    url = json['url'];
    desc = json['desc'];
    order = json['order'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['imagePath'] = this.imagePath;
    data['id'] = this.id;
    data['isVisible'] = this.isVisible;
    data['title'] = this.title;
    data['type'] = this.type;
    data['url'] = this.url;
    data['desc'] = this.desc;
    data['order'] = this.order;
    return data;
  }
}
