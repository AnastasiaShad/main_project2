import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'recipes_find.dart';

class RecipeDetailsPage extends StatefulWidget {
  @override
  _RecipeDetailsPageState createState() => _RecipeDetailsPageState();
  static PageRouteBuilder getRoute() {
    return PageRouteBuilder(
        transitionsBuilder: (_, animation, secondAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: RotationTransition(
          turns: Tween<double>(begin: 1, end: 1.0).animate(animation),
          child: child,
        ),
      );
    }, pageBuilder: (_, __, ___) {
      return new RecipeDetailsPage();
    });
  }
}

class _RecipeDetailsPageState extends State<RecipeDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
        ),
        backgroundColor: Color(0xffFFFFFF),
        body: ListView(
          children: <Widget>[
            recipespageDetails(context),
          ],
        ));
  }

  Widget recipespageDetails(BuildContext context) {
    return Container(
        color: Color(0xffFFFFFF),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              titleGroup(),
              textGroup(),
              pictureGroup(),

              timeGroup(),
              ingredGroup(),
              energyGroup(),
              stepsGroup(),

             // filterGroup(context),
              buttonGroup(context),
            ],
          ),
        ));
  }

  Widget titleGroup() {
    return Container(
      // используйте процент от максимальной ширины контейнера, чтобы обеспечить пространство для текста
      child:
      Container(
        //margin: EdgeInsets.only(top: 8),
        child: Container(
          // height: 76,
          // width: 450,
          constraints: BoxConstraints(
            minHeight: 0,
            maxHeight: double.infinity,
          ),
          decoration: BoxDecoration(
            color: Color(0xffFFD3B8),
          ),
          child: Container(
            margin: EdgeInsets.only(top: 14),
            alignment: Alignment.center,
            child: Text(
              "NAME",
              textAlign: TextAlign.center,
              softWrap: true,
              style: TextStyle(
                  fontSize: 40,

                  fontFamily: "Montserrat-Black",
                  color: Color(0xffFF6933)),
            ),
          ),),
      ),
    );
  }

  Widget textGroup() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 20),
      child: Stack(
        //margin: EdgeInsets.only(top: 40),
        children: [
          Container(
            alignment: Alignment.center,
            height: 89,
            width: 277,
            decoration: BoxDecoration(
              color: Color(0xffFFD3B8),
              borderRadius: BorderRadius.circular(45),
            ),
            child: Container(
              padding: EdgeInsets.only(left: 24, right: 12, top: 8),
              child: Center(
                child: Text(
                  "Hope you enjoy the found recipe🔥",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Montserrat-SemiBold",
                      color: Color(0xff000000)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget pictureGroup() {
    return Container(
      height: 260,
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 12),

          child: Container(
            alignment: Alignment.center,
            child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    "assets/img/1s.jpg",
                    fit: BoxFit.cover,

                  ),
                )
            ),
          ),


    );
  }
  Widget timeGroup() {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Stack(children: [Container(padding: EdgeInsets.only(
        left: 28,
      ),
        child: Text(
          "TIME",
          style: TextStyle(
              fontSize: 30,
              fontFamily: "Montserrat-Black",
              color: Color(0xffFF9B77)),
        ),
      ),
        Container(
          padding: EdgeInsets.only(left: 28, top: 45, right: 27),
          child: Text(
            "time value",
            style: TextStyle(
                fontSize: 16,
                fontFamily: "Montserrat-Black",
                color: Color(0xff000000)),
          ),
        ),],),

    );
  }
  Widget ingredGroup() {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Stack(children: [Container(
        padding: EdgeInsets.only(
          left: 28,
        ),
         child: Text(
      "INGREDIENTS",
        style: TextStyle(
            fontSize: 30,
            fontFamily: "Montserrat-Black",
            color: Color(0xffFF9B77)),
      ),
      ),
        Container(
          padding: EdgeInsets.only(left: 28, top: 45, right: 27),
          child: Text(
            "1 ingredient \n2 ingredient\n3 ingredient\n4 ingredient",
            style: TextStyle(
                fontSize: 16,
                fontFamily: "Montserrat-Black",
                color: Color(0xff000000)),
          ),
        ),],),

    );
  }
  Widget energyGroup() {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Stack(children: [Container( padding: EdgeInsets.only(
        left: 28,
      ),
        child: Text(
          "ENERGY VALUE",
          style: TextStyle(
              fontSize: 30,
              fontFamily: "Montserrat-Black",
              color: Color(0xffFF9B77)),
        ),
      ),
        Container(
          padding: EdgeInsets.only(left: 28, top: 45, right: 27),
          child: Text(
            " calories 0\n fats 0\n proteins 0\n carbohydrates 0",
            style: TextStyle(
                fontSize: 16,
                fontFamily: "Montserrat-Black",
                color: Color(0xff000000)),
          ),
        ),],),

    );
  }
  Widget stepsGroup() {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Stack(children: [Container( padding: EdgeInsets.only(
        left: 28,
      ),
        child: Text(
          "STEPS",
          style: TextStyle(
              fontSize: 30,
              fontFamily: "Montserrat-Black",
              color: Color(0xffFF9B77)),
        ),
      ),
        Container(
          padding: EdgeInsets.only(left: 28, top: 45, right: 27),
          child: Text(
            " 1 step\n 2 step\n 3 step\n 4 step",
            style: TextStyle(
                fontSize: 16,
                fontFamily: "Montserrat-Black",
                color: Color(0xff000000)),
          ),
        ),],),

    );
  }
// не надо вроде
  Widget filterGroup(BuildContext context) {
    return Container(

      child: SingleChildScrollView(

        //1text

      ),
    );
  }

  Widget buttonGroup(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Align(
        alignment: Alignment.center,
        child: Container(
            width: 324,
            height: 73,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: ElevatedButton(
              // тут должен быть где-то bloc
              onPressed: () {
                //print("on Pressed");
                Navigator.pop(context);
              },
              child: Container(
                child: Text("BACK TO RECIPES",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: "Montserrat-Black",
                        color: Color(0xff000000))),
              ),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(), backgroundColor: Color(0xffFF6933)),
            )),
      ),
    );
  }
}

