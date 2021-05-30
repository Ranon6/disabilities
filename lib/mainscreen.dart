import 'package:flutter/material.dart';
import 'package:main_page/SignUp.dart';
import 'package:main_page/loginpage.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {

    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.green[500] ,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context)=> LoginPage()),
          );
        },
        child: Text("تسجيل الدخول",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final signupButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.green[500] ,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(50.0,15.0,50.0,15.0),
        onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context)=> SignUp()),
          );

        },
        child: Text("انشاء حساب",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    return Scaffold(

      appBar: AppBar(
        title: Text('اهلا'),
        centerTitle: true,
        backgroundColor: Colors.green[500] ,
        /*actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){

          })
        ],*/

      ),

      body: Center(




        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Stack(
alignment: Alignment.bottomCenter,
            children: [
              Image(
                image: AssetImage("images/app icon.jpeg"),
                height:MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,


              ),
              Positioned(
                bottom: 30,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(

                    child: Column(


                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

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

                        signupButon,
                        SizedBox(
                          height: 15.0,),
                        loginButon,
                        SizedBox(
                          height: 15.0,
                        ),

                      ],

                    ),
                  ),
                ),
              )
            ],
          ),

        ),
      ),

    );

  }
}



