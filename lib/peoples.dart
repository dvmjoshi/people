import 'dart:ui';

import 'package:meta/meta.dart';

class Peoples {
  final int id;
  final String name;
  final String word;
  final String dob;
  final String age;
  final String note;
  final String quotes;
  final String image;
  final Color color;
  final String work;
  final List<String> photoUrls;

  const Peoples( {
    this.photoUrls,
    @required this.color,
    @required this.name,
    @required this.image,
    @required this.age,
    @required this.dob,
    @required this.id,
    @required this.note,
    @required this.quotes,
    @required this.word,
    @required this.work,
   // @required this.photoUrls,
  })
      : assert(color != null),
        assert(image != null),
        assert(name != null),
        assert(age != null),
        assert(dob != null),
        assert(id != null),
        assert(note != null),
        assert(quotes != null),
        assert(work != null),
     //   assert(photoUrls !=null),
        assert(word != null);
  String get asset =>"assets/images/$image.png";
  bool get isDark => color.computeLuminance() < 0.6;
}
  final List<Peoples> peoples= [
    Peoples(
      id:1,
      name: 'Divyam joshi',
      age: "21",
      dob: '1.Dec.1997',
      note: "Developer,gamer,researcher(design patterns, performance, productivity) and flutter developer",
      quotes: "if you want create something thats as affection "
          "to chnage people life do it with your values",
      word: "Provider key of knowledge is your responsibility ",
      work:"developer",
      image: "dev",
photoUrls: ["assets/images/captain.png","assets/pimage/div.png","assets/pimage/1.png",
" assets/pimage/dvm1.jpg",
],
     color: Color.fromRGBO(234, 188, 48, 1.0)),
    Peoples(
        id:2,
        name: 'Gandhi ji',
        age: "~",
        dob: '2.October.1869',
        note: "Mohandas Karamchand Gandhi was an Indian activist who was the leader of the Indian independence movement against British rule. Employing nonviolent civil disobedience, "
            "Gandhi led India to independence and inspired movements for civil rights and freedom across the world",
        quotes: "Strength does not come from physical capacity. It comes from an indomitable will.",
        word: "Happiness is when what you think, what you say, and what you do are in harmony.",
        image: "mahatmagandhi",
        work: "leader",
        photoUrls: ["assets/images/captain.png","assets/pimage/1.png","assets/pimage/2.png","assets/pimage/3.png",],
        color: Color.fromRGBO(200, 76, 42, 1.0)),
    Peoples(
        id:3,
        name: 'Barackobama',
        age: "57",
        dob: '4.Aug.1961',
        note: "Barack Hussein Obama II is an American politician who served as the 44th President of the United States from January 20, 2009, to January 20, 2017. A member of the Democratic Party, he was "
            "the first African American to assume the presidency and previously served as a United States Senator from Illinois",
        quotes: "hoo",
        word: "If you're walking down the right path and you're willing to keep walking, eventually you'll make progress",
        image: "barackobama",
        work: "leader",
        photoUrls: ["assets/images/captain.png","assets/pimage/1.png","assets/pimage/2.png","assets/pimage/3.png",],
        color: Color.fromRGBO(167, 163, 156, 1.0)),
    Peoples(
        id:4,
        name: 'charlie chaplin',
        age: "98",
        dob: '1.12.1890',
        note: "helloo divyam",
        quotes: "hoo",
        word: "",
        image: "charliechaplin",
        work: "comedian",
        photoUrls: ["assets/images/captain.png","assets/pimage/1.png","assets/pimage/2.png","assets/pimage/3.png",],
        color: Color.fromRGBO(200, 76, 42, 1.0)),
    Peoples(
        id:5,
        name: 'Dalai Lama',
        age: "83",
        dob: '6.July.1935',
        note: "The 14th Dalai Lama is the current Dalai Lama. Dalai Lamas are important monks of the Gelug school,"
            " the newest school of Tibetan Buddhism which was formally headed by the Ganden Tripas.",
        quotes: "My religion is very simple. My religion is kindness.",
        word: "Problems will always arise, but we need to address them differently."
            " We need to engage in dialogue to resolve them rather than resorting to the use of force",
        image: "dalailama",
        work: "14thDalai Lama",
        photoUrls: ["assets/images/captain.png","assets/pimage/1.png","assets/pimage/2.png","assets/pimage/3.png",],
        color: Color.fromRGBO(237, 142, 47, 1.0)),
    Peoples(
        id:6,
        name: 'DIVROBO',
        age: "01",
        dob: 'implementing',
        note: "divyam work",
        quotes: "code sleep repeat",
        word: "AI,Ml",
        image: "robot",
        work: "robot",
        photoUrls: ["assets/images/captain.png","assets/pimage/1.png","assets/pimage/2.png","assets/pimage/3.png",],
        color: Color.fromRGBO(88, 90, 59, 1.0)),
    Peoples(
        id:7,
        name: 'Nikolatesla',
        age: "98",
        dob: '1.12.1890',
        note: "helloo divyam",
        quotes: "hoo",
        word: "",
        image: "nikolatesla",
        work: "inventer",
        photoUrls: ["assets/images/captain.png","assets/pimage/1.png","assets/pimage/2.png","assets/pimage/3.png",],
        color: Color.fromRGBO(121, 118, 114, 1.0)),
    Peoples(
        id:8,
        name: 'Batman',
        age: "58",
        dob: '1.12.1890',
        note: "fight in dark",
        quotes: "hoo",
        word: "",
        image: "batman",
        work: "hero",
        photoUrls: ["assets/images/captain.png","assets/pimage/1.png","assets/pimage/2.png","assets/pimage/3.png",],
        color: Color.fromRGBO(136, 91, 61, 1.0)),
  ];


