class ProjectEntity {
  List<ProjectData> data = [];
  int? errorCode;
  String? errorMsg;

  ProjectEntity({List<ProjectData>? data, this.errorCode, this.errorMsg}) {
    if (data != null) {
      this.data = data;
    }
  }

  ProjectEntity.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      (json['data'] as List).forEach((v) {
        data.add(ProjectData.fromJson(v));
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

class ProjectData {
  int? visible;
  List<dynamic> children = [];
  String? name;
  bool? userControlSetTop;
  int? id;
  int? courseId;
  int? parentChapterId;
  int? order;

  ProjectData({
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

  ProjectData.fromJson(Map<String, dynamic> json) {
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
