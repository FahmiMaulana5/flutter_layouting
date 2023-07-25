import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {

  bool _isChecked = true;

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 134, left: 42,right: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 47,
                  width: 256,
                  child: Text(
                    "Hi, Welcome Back! 👋", 
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700
                    ),
                    textAlign: TextAlign.center,
                  )
                ),
                SizedBox(
                  height: 19,
                ),
                Container(
                  height: 75,
                  width: 315,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "example@gmail.com",
                          hintStyle: TextStyle(
                            fontSize: 16
                          ),
                          contentPadding: EdgeInsets.only(top: 13, left: 10, bottom: 11),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          )
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 75,
                  width: 315,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      TextFormField(
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: (){
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            }, 
                            icon: _isObscure ? Icon(Icons.visibility) : Icon(Icons.visibility_off)
                          ),
                          hintText: "Enter Your Password",
                          hintStyle: TextStyle(
                            fontSize: 16
                          ),
                          contentPadding: EdgeInsets.only(top: 13, left: 10, bottom: 11),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          )
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  height: 23,
                  width: 311,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            width: 20,
                            child: Checkbox(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              side: MaterialStateBorderSide.resolveWith(
                                (states) => BorderSide(width: 1.0, color: Colors.black),
                              ),
                              checkColor: Colors.black,
                              value: _isChecked,
                              onChanged: (_){
                                setState(() {
                                  _isChecked = !_isChecked;
                                });
                              },
                              activeColor: Colors.white,
                              tristate: true,
                            ),
                          ),
                          SizedBox(width: 7),
                          Text(
                            "Remember Me",
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 15,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Color(0xFFE86969),
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 31),
                SizedBox(
                  width: 312,
                  height: 48,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Color(0xFF0E64D2))
                    ),
                    onPressed: (){
      
                    }, 
                    child: Text(
                      'Login', 
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      )
                    )
                  ),
                ),
                SizedBox(height: 76),
                Container(
                  height: 27,
                  width: 318,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 1,
                        width: 116,
                        color: Color.fromARGB(50, 0, 0, 0),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Or With",
                        style: TextStyle(
                          color: Color.fromARGB(80, 0, 0, 0),
                          fontSize: 18,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 1,
                        width: 116,
                        color: Color.fromARGB(50, 0, 0, 0),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 33),
                GestureDetector(
                  onTap: (){
                    
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.none
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF1877F2),
                    ),
                    height: 48,
                    width: 312,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 9, top: 10, bottom: 9),
                      child: Row(
                        children: [
                          Container(
                            height: 26,
                            width: 26,
                            child: Image.asset('./assets/images/facebook.png')
                          ),
                          SizedBox(width: 42,),
                          Text(
                            "Login with Facebook",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 21),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.0,
                      color: Color.fromARGB(40, 0, 0, 0),
                      style: BorderStyle.solid
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                  ),
                  height: 48,
                  width: 312,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 9, top: 10, bottom: 9),
                    child: Row(
                      children: [
                        Container(
                        height: 26,
                        width: 26,
                        child: Image.asset('./assets/images/google.png')
                        ),
                        SizedBox(width: 52,),
                        Text(
                          "Login with Google",
                          style: TextStyle(
                            color: Color.fromARGB(60, 0, 0, 0),
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        color: Color(0xFF0D0E0E),
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(width: 5,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacementNamed(context, '/Second');
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          color: Color(0xFF160062),
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}