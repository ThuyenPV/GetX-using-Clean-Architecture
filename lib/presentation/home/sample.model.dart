class Sample {
  String? sId;
  int? index;
  String? guid;
  bool? isActive;
  String? balance;
  String? picture;
  int? age;
  String? eyeColor;
  String? name;
  String? gender;
  String? company;
  String? email;
  String? phone;
  String? address;
  String? about;
  String? registered;
  double? latitude;
  double? longitude;
  List<String>? tags;
  List<Friends>? friends;
  String? greeting;
  String? favoriteFruit;

  Sample(
      {this.sId,
      this.index,
      this.guid,
      this.isActive,
      this.balance,
      this.picture,
      this.age,
      this.eyeColor,
      this.name,
      this.gender,
      this.company,
      this.email,
      this.phone,
      this.address,
      this.about,
      this.registered,
      this.latitude,
      this.longitude,
      this.tags,
      this.friends,
      this.greeting,
      this.favoriteFruit});

  Sample.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    index = json['index'];
    guid = json['guid'];
    isActive = json['isActive'];
    balance = json['balance'];
    picture = json['picture'];
    age = json['age'];
    eyeColor = json['eyeColor'];
    name = json['name'];
    gender = json['gender'];
    company = json['company'];
    email = json['email'];
    phone = json['phone'];
    address = json['address'];
    about = json['about'];
    registered = json['registered'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    tags = json['tags'].cast<String>();
    if (json['friends'] != null) {
      friends = <Friends>[];
      json['friends'].forEach((v) {
        friends?.add(Friends.fromJson(v));
      });
    }
    greeting = json['greeting'];
    favoriteFruit = json['favoriteFruit'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['_id'] = sId;
    data['index'] = index;
    data['guid'] = guid;
    data['isActive'] = isActive;
    data['balance'] = balance;
    data['picture'] = picture;
    data['age'] = age;
    data['eyeColor'] = eyeColor;
    data['name'] = name;
    data['gender'] = gender;
    data['company'] = company;
    data['email'] = email;
    data['phone'] = phone;
    data['address'] = address;
    data['about'] = about;
    data['registered'] = registered;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['tags'] = tags;
    if (friends != null) {
      data['friends'] = friends?.map((v) => v.toJson()).toList();
    }
    data['greeting'] = greeting;
    data['favoriteFruit'] = favoriteFruit;
    return data;
  }
}

class Friends {
  int? id;
  String? name;

  Friends({this.id, this.name});

  Friends.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
