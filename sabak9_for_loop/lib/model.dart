class Student {
  Student(
      {required this.id,
      required this.name,
      required this.surName,
      required this.age,
      this.phone,
      required this.email,
      this.address,
      required this.group,
      this.gender,
      this.marriage});
  final int id;

  final String name;
  final String surName;
  int age;
  String? phone;
  final String email;
  final String? address;
  int group;
  final String? gender;
  String? marriage;
}

final danyar = Student(
  id: 1,
  name: 'Danyar',
  surName: 'Askarov',
  age: 18,
  email: 'danyar@mail',
  group: 1,
  address: 'Bishkek',
  gender: 'male',
);

final dinara = Student(
  id: 2,
  name: 'Danyar',
  surName: 'Askarov',
  age: 18,
  email: 'danyar@mail',
  group: 1,
  phone: '+996777777717',
  marriage: 'single',
);

final ayzat = Student(
  id: 3,
  name: 'Danyar',
  surName: 'Askarov',
  age: 18,
  email: 'danyar@mail',
  group: 1,
  address: 'Bazar-Korgon',
  gender: 'female',
  marriage: 'single',
);

final jasmin = Student(
  id: 4,
  name: 'Danyar',
  surName: 'Askarov',
  age: 18,
  email: 'danyar@mail',
  group: 1,
  phone: '+996507574583',
  gender: 'male',
  address: 'Bishkek',
);

List studentter = <Student>[
  danyar,
  dinara,
  ayzat,
  jasmin,
];
