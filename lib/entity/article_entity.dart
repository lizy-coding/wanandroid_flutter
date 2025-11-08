class ArticleEntity {
  ArticleData? data;
  int? errorCode;
  String? errorMsg;

  ArticleEntity({this.data, this.errorCode, this.errorMsg});

  ArticleEntity.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? ArticleData.fromJson(json['data']) : null;
    errorCode = json['errorCode'];
    errorMsg = json['errorMsg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['errorCode'] = this.errorCode;
    data['errorMsg'] = this.errorMsg;
    return data;
  }
}

class ArticleData {
  bool? over;
  int? pageCount;
  int? total;
  int? curPage;
  int? offset;
  int? size;
  List<ArticleDataData> datas = [];

  ArticleData({this.over, this.pageCount, this.total, this.curPage, this.offset, this.size, List<ArticleDataData>? datas}) {
    if (datas != null) {
      this.datas = datas;
    }
  }

  ArticleData.fromJson(Map<String, dynamic> json) {
    over = json['over'];
    pageCount = json['pageCount'];
    total = json['total'];
    curPage = json['curPage'];
    offset = json['offset'];
    size = json['size'];
    if (json['datas'] != null) {
      (json['datas'] as List).forEach((v) {
        datas.add(ArticleDataData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['over'] = this.over;
    data['pageCount'] = this.pageCount;
    data['total'] = this.total;
    data['curPage'] = this.curPage;
    data['offset'] = this.offset;
    data['size'] = this.size;
    data['datas'] = this.datas.map((v) => v.toJson()).toList();
    return data;
  }
}

class ArticleDataData {
  String? superChapterName;
  int? publishTime;
  int? visible;
  String? niceDate;
  String? projectLink;
  String? author;
  String? prefix;
  int? zan;
  String? origin;
  String? chapterName;
  String? link;
  String? title;
  int? type;
  int? userId;
  List<dynamic> tags = [];
  String? apkLink;
  String? envelopePic;
  int? chapterId;
  int? superChapterId;
  int? id;
  int? originId;
  bool? fresh;
  bool? collect;
  int? courseId;
  String? desc;

  ArticleDataData({
    this.superChapterName,
    this.publishTime,
    this.visible,
    this.niceDate,
    this.projectLink,
    this.author,
    this.prefix,
    this.zan,
    this.origin,
    this.chapterName,
    this.link,
    this.title,
    this.type,
    this.userId,
    List<dynamic>? tags,
    this.apkLink,
    this.envelopePic,
    this.chapterId,
    this.superChapterId,
    this.id,
    this.originId,
    this.fresh,
    this.collect,
    this.courseId,
    this.desc,
  }) {
    if (tags != null) {
      this.tags = tags;
    }
  }

  ArticleDataData.fromJson(Map<String, dynamic> json) {
    superChapterName = json['superChapterName'];
    publishTime = json['publishTime'];
    visible = json['visible'];
    niceDate = json['niceDate'];
    projectLink = json['projectLink'];
    author = json['author'];
    prefix = json['prefix'];
    zan = json['zan'];
    origin = json['origin'];
    chapterName = json['chapterName'];
    link = json['link'];
    title = json['title'];
    type = json['type'];
    userId = json['userId'];
    if (json['tags'] != null) {
      tags = [];
    }
    apkLink = json['apkLink'];
    envelopePic = json['envelopePic'];
    chapterId = json['chapterId'];
    superChapterId = json['superChapterId'];
    id = json['id'];
    originId = json['originId'];
    fresh = json['fresh'];
    collect = json['collect'];
    courseId = json['courseId'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['superChapterName'] = this.superChapterName;
    data['publishTime'] = this.publishTime;
    data['visible'] = this.visible;
    data['niceDate'] = this.niceDate;
    data['projectLink'] = this.projectLink;
    data['author'] = this.author;
    data['prefix'] = this.prefix;
    data['zan'] = this.zan;
    data['origin'] = this.origin;
    data['chapterName'] = this.chapterName;
    data['link'] = this.link;
    data['title'] = this.title;
    data['type'] = this.type;
    data['userId'] = this.userId;
    data['tags'] = [];
    data['apkLink'] = this.apkLink;
    data['envelopePic'] = this.envelopePic;
    data['chapterId'] = this.chapterId;
    data['superChapterId'] = this.superChapterId;
    data['id'] = this.id;
    data['originId'] = this.originId;
    data['fresh'] = this.fresh;
    data['collect'] = this.collect;
    data['courseId'] = this.courseId;
    data['desc'] = this.desc;
    return data;
  }
}
