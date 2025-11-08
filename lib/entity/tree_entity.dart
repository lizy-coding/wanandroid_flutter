class TreeEntity {
  List<TreeData> data = [];
  int? errorCode;
  String? errorMsg;

  TreeEntity({List<TreeData>? data, this.errorCode, this.errorMsg}) {
    if (data != null) {
      this.data = data;
    }
  }

  TreeEntity.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      (json['data'] as List).forEach((v) {
        data.add(TreeData.fromJson(v));
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

class TreeData {
  int? visible;
  List<TreeDatachild> children = [];
  String? name;
  bool? userControlSetTop;
  int? id;
  int? courseId;
  int? parentChapterId;
  int? order;
  bool? isExpanded; // 标识是否初始化

  TreeData({
    this.visible,
    List<TreeDatachild>? children,
    this.name,
    this.userControlSetTop,
    this.id,
    this.courseId,
    this.parentChapterId,
    this.order,
    this.isExpanded,
  }) {
    if (children != null) {
      this.children = children;
    }
  }

  TreeData.fromJson(Map<String, dynamic> json) {
    visible = json['visible'];
    if (json['children'] != null) {
      (json['children'] as List).forEach((v) {
        children.add(TreeDatachild.fromJson(v));
      });
    }
    name = json['name'];
    userControlSetTop = json['userControlSetTop'];
    id = json['id'];
    courseId = json['courseId'];
    parentChapterId = json['parentChapterId'];
    order = json['order'];
    isExpanded = json['isExpanded'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['visible'] = this.visible;
    data['children'] = this.children.map((v) => v.toJson()).toList();
    data['name'] = this.name;
    data['userControlSetTop'] = this.userControlSetTop;
    data['id'] = this.id;
    data['courseId'] = this.courseId;
    data['parentChapterId'] = this.parentChapterId;
    data['order'] = this.order;
    data['isExpanded'] = this.isExpanded;
    return data;
  }
}

class TreeDatachild {
  int? visible;
  List<dynamic> children = [];
  String? name;
  bool? userControlSetTop;
  int? id;
  int? courseId;
  int? parentChapterId;
  int? order;

  TreeDatachild({
    this.visible,
    List<dynamic>? children,
    this.name,
    this.userControlSetTop,
    this.id,
    this.courseId,
    this.parentChapterId,
    this.order,
  }) {
    if (children != null) {
      this.children = children;
    }
  }

  TreeDatachild.fromJson(Map<String, dynamic> json) {
    visible = json['visible'];
    if (json['children'] != null) {
      children = [];
    }
    name = json['name'];
    userControlSetTop = json['userControlSetTop'];
    id = json['id'];
    courseId = json['courseId'];
    parentChapterId = json['parentChapterId'];
    order = json['order'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['visible'] = this.visible;
    data['children'] = [];
    data['name'] = this.name;
    data['userControlSetTop'] = this.userControlSetTop;
    data['id'] = this.id;
    data['courseId'] = this.courseId;
    data['parentChapterId'] = this.parentChapterId;
    data['order'] = this.order;
    return data;
  }
}
