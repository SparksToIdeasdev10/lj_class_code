class news {
  Information? information;
  int? totalArticles;
  List<Articles>? articles;

  news({this.information, this.totalArticles, this.articles});

  news.fromJson(Map<String, dynamic> json) {
    information = json['information'] != null
        ? new Information.fromJson(json['information'])
        : null;
    totalArticles = json['totalArticles'];
    if (json['articles'] != null) {
      articles = <Articles>[];
      json['articles'].forEach((v) {
        articles!.add(new Articles.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.information != null) {
      data['information'] = this.information!.toJson();
    }
    data['totalArticles'] = this.totalArticles;
    if (this.articles != null) {
      data['articles'] = this.articles!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Information {
  RealTimeArticles? realTimeArticles;

  Information({this.realTimeArticles});

  Information.fromJson(Map<String, dynamic> json) {
    realTimeArticles = json['realTimeArticles'] != null
        ? new RealTimeArticles.fromJson(json['realTimeArticles'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.realTimeArticles != null) {
      data['realTimeArticles'] = this.realTimeArticles!.toJson();
    }
    return data;
  }
}

class RealTimeArticles {
  String? message;

  RealTimeArticles({this.message});

  RealTimeArticles.fromJson(Map<String, dynamic> json) {
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    return data;
  }
}

class Articles {
  String? id;
  String? title;
  String? description;
  String? content;
  String? url;
  String? image;
  String? publishedAt;
  String? lang;
  Source? source;

  Articles(
      {this.id,
        this.title,
        this.description,
        this.content,
        this.url,
        this.image,
        this.publishedAt,
        this.lang,
        this.source});

  Articles.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    content = json['content'];
    url = json['url'];
    image = json['image'];
    publishedAt = json['publishedAt'];
    lang = json['lang'];
    source =
    json['source'] != null ? new Source.fromJson(json['source']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['content'] = this.content;
    data['url'] = this.url;
    data['image'] = this.image;
    data['publishedAt'] = this.publishedAt;
    data['lang'] = this.lang;
    if (this.source != null) {
      data['source'] = this.source!.toJson();
    }
    return data;
  }
}

class Source {
  String? id;
  String? name;
  String? url;
  String? country;

  Source({this.id, this.name, this.url, this.country});

  Source.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    url = json['url'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['url'] = this.url;
    data['country'] = this.country;
    return data;
  }
}
