class HotKeyEntity {
  List<HotKeyData> data = [];
  int? errorCode;
  String? errorMsg;

  HotKeyEntity({List<HotKeyData>? data, this.errorCode, this.errorMsg}) {
    if (data != null) {
      this.data = data;
    }
  }

  HotKeyEntity.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      (json['data'] as List).forEach((v) {
        data.add(HotKeyData.fromJson(v));
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

class HotKeyData {
  int? visible;
  String? link;
  String? name;
  int? id;
  int? order;

  HotKeyData({this.visible, this.link, this.name, this.id, this.order});

  HotKeyData.fromJson(Map<String, dynamic> json) {
    visible = json['visible'];
    link = json['link'];
    name = json['name'];
    id = json['id'];
    order = json['order'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['visible'] = this.visible;
    data['link'] = this.link;
    data['name'] = this.name;
    data['id'] = this.id;
    data['order'] = this.order;
    return data;
  }
}
