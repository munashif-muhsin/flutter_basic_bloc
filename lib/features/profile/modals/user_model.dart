part 'sub_models/name_information_model.dart';
part 'sub_models/user_image_model.dart';
part 'sub_models/user_date_and_age_model.dart';
part 'sub_models/user_id_model.dart';
part 'sub_models/user_location_model.dart';
part 'sub_models/user_login_info_model.dart';

class User {
  User({
    required this.gender,
    required this.name,
    required this.location,
    required this.email,
    required this.loginInfo,
    required this.dob,
    required this.registered,
    required this.phone,
    required this.cell,
    required this.id,
    required this.images,
    required this.nat,
  });

  final String gender;
  final NameInfo name;
  final Location location;
  final String email;
  final DateAndAge dob;
  final DateAndAge registered;
  final String phone;
  final String cell;
  final UserId id;
  final UserImage images;
  final String nat;

  // We shouldn't have this
  final LoginInformation loginInfo;

  factory User.fromJson(Map<String, dynamic> json) => User(
        gender: json["gender"],
        name: NameInfo.fromJson(json["name"]),
        location: Location.fromJson(json["location"]),
        email: json["email"],
        loginInfo: LoginInformation.fromJson(json["login"]),
        dob: DateAndAge.fromJson(json["dob"]),
        registered: DateAndAge.fromJson(json["registered"]),
        phone: json["phone"],
        cell: json["cell"],
        id: UserId.fromJson(json["id"]),
        images: UserImage.fromJson(json["picture"]),
        nat: json["nat"],
      );

  Map<String, dynamic> toJson() => {
        "gender": gender,
        "name": name.toJson(),
        "location": location.toJson(),
        "email": email,
        "login": loginInfo.toJson(),
        "dob": dob.toJson(),
        "registered": registered.toJson(),
        "phone": phone,
        "cell": cell,
        "id": id.toJson(),
        "picture": images.toJson(),
        "nat": nat,
      };
}
