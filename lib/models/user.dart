part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User(
      {this.id = 0,
      this.name = "",
      this.email = "",
      this.address = "",
      this.houseNumber = "",
      this.phoneNumber = "",
      this.city = "",
      this.picturePath = ""});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUser = User(
    id: 1,
    name: "Nyoman Darmawan",
    email: 'nyo@nyomandarmawan.id',
    address: 'jalan gunung agung gang III/2 no 6',
    houseNumber: '6',
    phoneNumber: '081936161515',
    city: 'Singaraja',
    picturePath:
        'https://instagram.fdps2-1.fna.fbcdn.net/v/t51.2885-19/54277631_407830939773425_9049066003236913152_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fdps2-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=hgUfL1wuPlYAX8RCOVd&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT_ojS7oTiohF68IfsWInFUFTj5mqxuN5brzT8NEgcURng&oe=6322851C&_nc_sid=8fd12b');
