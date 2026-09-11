class plant {
  String? responseCode;
  String? message;
  String? status;
  List<TreePlant>? treePlant;

  plant({this.responseCode, this.message, this.status, this.treePlant});

  plant.fromJson(Map<String, dynamic> json) {
    responseCode = json['response_code'];
    message = json['message'];
    status = json['status'];
    if (json['TreePlant'] != null) {
      treePlant = <TreePlant>[];
      json['TreePlant'].forEach((v) {
        treePlant!.add(new TreePlant.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['response_code'] = this.responseCode;
    data['message'] = this.message;
    data['status'] = this.status;
    if (this.treePlant != null) {
      data['TreePlant'] = this.treePlant!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TreePlant {
  String? id;
  String? name;
  String? image;
  String? description;

  TreePlant({this.id, this.name, this.image, this.description});

  TreePlant.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['Name'];
    image = json['Image'];
    description = json['Description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Name'] = this.name;
    data['Image'] = this.image;
    data['Description'] = this.description;
    return data;
  }
}
