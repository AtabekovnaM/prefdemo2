import 'package:flutter/material.dart';
import 'package:prefdemo2/modal/user_modal.dart';
import 'package:prefdemo2/services/pref_services.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  void _doLogin(){
    String email = emailController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    String name = nameController.text.toString().trim();
    String phone = phoneController.text.toString().trim();
    User user = User.from(email: email,password: password,name: name,phone: phone);
    Prefs.storeUser(user);

  }
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Text("Let's Get Started!",style: TextStyle(color: Colors.black87,fontSize:32,fontWeight:FontWeight.w900,),),
            SizedBox(height: 7,),
            Text("Create an account to Q Allure to get all features",style: TextStyle(color: Colors.grey,fontSize: 17,),),
            SizedBox(height: 40,),
            Container(
              margin: EdgeInsets.only(left: 25,right: 20),
              height: 75,
              padding: EdgeInsets.only(left: 15,right: 15,top: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white
              ),
              child: Container(
                child:TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      hintText: "Name",
                      hintStyle: TextStyle(color: Colors.grey,fontSize: 17),
                      hoverColor: Colors.black,
                      border: InputBorder.none,
                      icon: Icon(Icons.account_circle_outlined,color: Colors.grey[400],)
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 25,right: 20),
              height: 75,
              padding: EdgeInsets.only(left: 15,right: 15,top: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white
              ),
              child: Container(
                child:TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: "E-mail",
                      hintStyle: TextStyle(color: Colors.grey,fontSize: 17),
                      hoverColor: Colors.black,
                      border: InputBorder.none,
                      icon: Icon(Icons.mail_outline_outlined,color: Colors.grey[400],)
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              height: 75,
              padding: EdgeInsets.only(left: 15,right: 15,top: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white
              ),
              child: TextField(
                controller: phoneController,
                decoration: InputDecoration(
                    hintText: "Phone",
                    hintStyle: TextStyle(color: Colors.grey,fontSize: 17),
                    border: InputBorder.none,
                    icon: Icon(Icons.phone_iphone,color: Colors.grey[400],)
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              height: 75,
              padding: EdgeInsets.only(left: 15,right: 15,top: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white
              ),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey,fontSize: 17),
                    border: InputBorder.none,
                    icon: Icon(Icons.lock_open,color: Colors.grey[400],)
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              height: 75,
              padding: EdgeInsets.only(left: 15,right: 15,top: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white
              ),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(color: Colors.grey,fontSize: 17),
                    border: InputBorder.none,
                    icon: Icon(Icons.lock_open,color: Colors.grey[400],)
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              height: 65,
              width: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: Colors.blue[800],
                boxShadow: [
                  BoxShadow(
                    color: Colors.indigo.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 9,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: FlatButton(
                onPressed: _doLogin,
                child: Text("CREATE",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w800),),
              ),
            ),
            SizedBox(height: 18,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("Already have an account?",style: TextStyle(color: Colors.black87,fontSize: 17),),
                  ),
                  Container(
                    child: FlatButton(
                      onPressed: _doLogin,
                      child: Text("Login here",style: TextStyle(color: Colors.blue[700],fontSize: 17,fontWeight: FontWeight.w700),),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
