class User{
  String id;
  String email;
  String password;
  String name;
  String phone;

  User({this.id,this.email,this.password,this.name,this.phone});
  User.from({this.email,this.password,this.name,this.phone});

  User.fromJson(Map<String, dynamic> json)
      : id = json['.id'],
        email = json['.email'],
        name = json['.name'],
        phone = json['.phone'],
        password = json['.password'];

  Map<String, dynamic> toJson() =>{
    'id' : id,
    'email' : email,
    'password' : password,
    'phone' : phone,
    'name' : name
  };
}