
import 'package:flutter/material.dart';
import 'detail.dart';
import 'peoples.dart';
import 'dart:async';
import 'home.dart';
//import 'package:people/peoples.dart';
// if we use package to import and it will give error

void main() {
  runApp(
      new MaterialApp(debugShowCheckedModeBanner: false, home: Peopleworld()));
}

class Peopleworld extends StatefulWidget {
  Peopleworld({Key key}) : super(key: key);
  @override
  _peopleworldstate createState() => new _peopleworldstate();
}

//Calls its callback once per animation frame.
//To create an AnimationController in a class that uses this mixin,
// pass vsync: this to the animation controller constructor whenever you create a new animation controller.
class _peopleworldstate extends State<Peopleworld>
    with TickerProviderStateMixin {


  Map<int, AnimationController> controllerMaps = new Map();
  Map<int, CurvedAnimation> animationMaps = new Map();
 @override
  void initState() {
    // TODO: implement initState
    peoples.forEach((Peoples people) {
      AnimationController _animationController = AnimationController(
          duration: Duration(milliseconds: 200), vsync: this);
      CurvedAnimation _animation = new CurvedAnimation(
          parent: _animationController, curve: Curves.easeIn);
      controllerMaps[people.id] = _animationController;
      _animationController.addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          _DetailHero(people);


        }
      });
      animationMaps[people.id] = _animation;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Theme(
      data: ThemeData(
        primaryColor: Colors.grey.shade300,
      ),
      child: Scaffold(
          appBar: new AppBar(
            title: new Text(
              'Peoples',
          //    style: TextStyle(fontSize: 16.0, color: Colors.grey.shade500),
            ),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search),
                  onPressed: ()
                  {showSearch(context: context, delegate: Datsearch());})
            ],
            elevation: 0.0,
          ),
          body: ListView.builder(
            itemBuilder: (context, index) {
              Peoples people = peoples[index];
              AnimationController _controller = controllerMaps[people.id];
              CurvedAnimation _animation = animationMaps[people.id];
              return homeani(
                people: people,
                isHeader: false,
                animation: _animation,
                onAction: () {
                  _controller.forward();
                },
              );
            },
            itemCount: peoples.length,
          )),
    );
  }

  void _DetailHero (Peoples people){
AnimationController _controller =controllerMaps[people.id];
CurvedAnimation _curvedAnimation=animationMaps[people.id];
   Navigator.push(
    context, MaterialPageRoute(
    builder: (context){
   return Detail(
  people: people,
   animation: _curvedAnimation,
     onAction: (){
       Navigator.pop(context);
     },
   );
    },fullscreenDialog: true)).then((value){
   Future.delayed(Duration(milliseconds:500)).then((v){
_controller.reverse();
   });
});

  }
}
class Datsearch extends SearchDelegate<String>{

  final data  =["a","b","dvm","divyam","sdjh"];
  final recents  =["a","b"];
  @override
  List<Widget> buildActions(BuildContext context) {
    // actions on app bar
    return[IconButton(icon:Icon(Icons.clear), onPressed: (){
      query="";
    })];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow, progress: transitionAnimation)
        , onPressed: (){
      close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    //
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
Peoples peoples;
  //  final slist=query.isNotEmpty?peoples.work:peoples.name.contains(query);
    //final suggestionlist = query.isEmpty ? recents : data.where((p) =>
      //  p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) =>
          ListTile(
            leading: Icon(Icons.work),
        //    title: Text(suggestionlist[index]),
          ),
      itemCount: recents.length,
    );
    /*  return ListView.builder(
        itemBuilder: (context,index){
          Peoples people = peoples[index];
          final _controller = people.work;
          final suggestion=query.isEmpty?
          people.work:peoples;//.where((p)=>p.startsWith(query)).toList();
          return ListTile(
          leading: Icon(Icons.people),
          title: Text(suggestion),
        );},

    itemCount: peoples.length,);
  }*/
  }
}
