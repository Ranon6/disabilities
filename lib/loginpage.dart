import 'package:flutter/material.dart';
import 'package:main_page/mainscreen.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.green[500]  ,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {

        },
        child: Text("تسجيل الدخول",
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
        title: Text('ادخل بياناتك'),
        centerTitle: true,
        backgroundColor: Colors.green[500] ,
      ),


      body: Center(



   // child: SingleChildScrollView(
   // scrollDirection:Axis.vertical,
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
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'ادخل البريد الالكترونى',
                    ),
                  ),
                ),

                Positioned(
                  bottom:1,
                  top: 80,
                 // left: 50,

                  child: Container(

                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                    // height: 10,
                    padding: EdgeInsets.all(10),
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
                  height: 100.0,

                ),

                /* SizedBox(height: 45.0),
                emailField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(
                  height: 35.0,
                ),*/


                loginButon,
                SizedBox(
                  height: 15.0,
                ),
                backButon,
                SizedBox(
                  height: 15.0,),


              ],

            ),

          ),
        )
        ],
          ),
          ),
     // ),

    ),
    );

  }
}

