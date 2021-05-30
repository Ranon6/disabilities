import 'package:flutter/material.dart';
import 'package:main_page/mainscreen.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {

    final signupButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.green[500]  ,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {

        },
        child: Text("انشاء حساب",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final backButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.green[500] ,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(50.0,15.0,50.0,15.0),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=> MainScreen())
          );
        },
        child: Text("الرجوع",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    var nameController;
    var passwordController;

    return Scaffold(
      appBar: AppBar(
        title: Text('ادخل هذه البيانات'),
        centerTitle: true,
        backgroundColor: Colors.green[500] ,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.menu), onPressed: (){

          })
        ],
      ),


      body: Center(


     //child:SingleChildScrollView(
    //scrollDirection:Axis.vertical,

        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Stack(


            alignment: Alignment.bottomCenter,
              children: [

                Image(
                  image: AssetImage("images/app icon.jpeg"),
                  height:MediaQuery.of(context).size.height ,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,


                ),


                Container(

                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.all(3),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'ادخل الاسم',
                    ),
                  ),
                ),
                Positioned(
                    bottom:1,
                    top: 60,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.all(3),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'ادخل البريد الالكترونى',
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom:1,
                    top: 120,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(3),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'ادخل رقم الموبايل',
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom:1,
                    top: 180,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.all(3),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'ادخل المحافظه',
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom:1,
                    top: 250,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.all(3),
                    child: TextField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'ادخل كلمة السر',
                      ),
                    ),
                  ),
                ),



                Positioned(
            bottom: 30,

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),



            //child: SingleChildScrollView(
             // scrollDirection:Axis.vertical,
              child: Column(


                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[



                 /* Image(
                    image: AssetImage("images/app icon.jpeg"),


                  ),*/
                  /*ResizeImage(imageProvider),*/

                  /*Image.asset(
                    "app icon.jpeg",
                    fit: BoxFit.contain,
                  ),*/

                  SizedBox(
                    height: 10.0,

                  ),

                  /* SizedBox(height: 45.0),
                  emailField,
                  SizedBox(height: 25.0),
                  passwordField,
                  SizedBox(
                    height: 35.0,
                  ),*/


                  signupButon,
                  SizedBox(
                    height: 5.0,
                  ),
                  backButon,
                  SizedBox(
                    height: 5.0,),


                ],

              ),
            ),

          ),
          //),
        ],//children
      ),
        ),
    // ),
      ),

    );

  }
}


