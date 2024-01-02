import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'RecipesData.dart';
import 'recipes_one.dart';
class RecipesFindPage extends StatefulWidget {
  @override
  _RecipesFindPageState createState() => _RecipesFindPageState();
}
class _RecipesFindPageState extends State<RecipesFindPage> {
  List<RecipesData> RecipesList=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
        ),
        backgroundColor: Color(0xffFFFFFF),
        body: ListView(
          children: <Widget>[
            recipesfindpageDetails(context),
          ],
        ));
  }

  Widget recipesfindpageDetails(BuildContext context) {
    return Container(
        color: Color(0xffFFFFFF),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              titleGroup(),
              textGroup(),
              cardGroup(RecipesList),
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
              "WHAT WE FOUND",
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
                  "Here's what we found, considering your needs and wishes 🥰",
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
  Future<List<RecipesData>> getRecipes() async {
    List<RecipesData> arts = [];
    // await FirebaseFirestore.instance
    //     .collection('gallery')
    //     .get()
    //     .then((QuerySnapshot querySnapshot) {
    //   querySnapshot.docs.forEach((QueryDocumentSnapshot doc) {
    //     arts.add(Art.fromDoc(doc));
    //   });
    // });
    return arts;
  }

  Widget cardGroup(List<RecipesData> RecipesList) {
    //return RefreshIndicator(
      // onRefresh: () async{
      //   RecipesList=[];
      //   await getRecipes();
      //   setState(() {});
      //   return Future.value();
      // },
    return Container(

        margin: EdgeInsets.only(top:30, left: 28, right: 27),
      // child: GridView.builder(
      //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 2,
      //       childAspectRatio: 0.70,
      //     ),
      //     itemCount: 1, //RecipesList.length
      //     itemBuilder: (BuildContext context, int index) {
            child: InkWell(
              onTap: () {
                Navigator.push(context, RecipeDetailsPage.getRoute());
              },
              child: Card(


                child:  Container(
                  width: 169,
                  height: 169,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xffFF9B77),
                  ),
                  child: Column(
                    children: [
                      Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              "assets/img/1s.jpg",
                              fit: BoxFit.cover,

                            ),
                          )
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 8,
                        ),
                        child: Text("BORSCH",  style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Montserrat-Bold",
                            color: Color(0xff000000))),
                      )
                    ],
                  ),


                ),



              ),
           // );
            )
          //}),
    );
  }

  Widget buttonGroup(BuildContext context) {
    return Container(
      //bottom: 20,
      //\\alignment: Alignment.bottomCenter,
      //margin: EdgeInsets.only(top:100),
      child: Align(
       alignment: Alignment.bottomCenter,
        child: Container(
            width: 324,
            height: 73,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(25),
            ),
            child: ElevatedButton(
              onPressed: () {
               // print("on Pressed");
                Navigator.pop(context);



              },
              child: Container(
                child: Text("CHANGE FILTERS",
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
