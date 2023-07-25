import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 88, left: 39, right: 39),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Create an account",
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 24,
                    fontWeight: FontWeight.w700
                  ),
                ),
                SizedBox(height: 7),
                Text(
                  "Connect with your friends today!",
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 14,
                    fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(height: 36),
                Container(
                  height: 48,
                  width: 312,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Your Username",
                      hintStyle: TextStyle(
                        fontSize: 16
                      ),
                      contentPadding: EdgeInsets.only(left: 11, top: 12, bottom: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      )
                    ),
                  ),
                ),
                SizedBox(height: 28),
                Container(
                  height: 48,
                  width: 312,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Your Email",
                      hintStyle: TextStyle(
                        fontSize: 16
                      ),
                      contentPadding: EdgeInsets.only(left: 11, top: 12, bottom: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      )
                    ),
                  ),
                ),
                SizedBox(height: 28),
                Container(
                  height: 48,
                  width: 312,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Your Phone Number",
                      hintStyle: TextStyle(
                        fontSize: 16
                      ),
                      contentPadding: EdgeInsets.only(left: 11, top: 12, bottom: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      )
                    ),
                  ),
                ),
                SizedBox(height: 28),
                Container(
                  height: 48,
                  width: 312,
                  child: TextFormField(
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
                      contentPadding: EdgeInsets.only(left: 11, top: 12, bottom: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      )
                    ),
                  ),
                ),
                SizedBox(height: 29),
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
                      'Sign Up', 
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      )
                    )
                  ),
                ),
                SizedBox(height: 32),
                Row(
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
                SizedBox(height: 23),
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
                            "Signup with Facebook",
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
                SizedBox(height: 28),
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
                          "Signup with Google",
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
                SizedBox(height: 33),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(0xFF0D0E0E),
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(width: 5,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacementNamed(context, '/First');
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color(0xFF2F89FC),
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