
class ShippingAddressModel {
  String? name;
  String? email;
  String? address;
  String? city;
  String? phoneNumber;
  String? addressDeitails;

  ShippingAddressModel({
    this.name,
    this.email,
    this.address,
    this.city,
    this.phoneNumber,
    this.addressDeitails,
  });
  factory ShippingAddressModel.fromJson(Map<String, dynamic> json) {
    return ShippingAddressModel(
      name: json['name'],
      email: json['email'],
      address: json['address'],
      city: json['city'],
      phoneNumber: json['phoneNumber'],
      addressDeitails: json['addressDeitails'],
    );
  }
  @override
  String toString() {
    // TODO: implement toString
    return ' $address , $city  ,$addressDeitails';
  }

  toJson() => {
    'name': name,
    'email': email,
    'address': address,
    'city': city,
    'phoneNumber': phoneNumber,
    'addressDeitails': addressDeitails,
  };
}
