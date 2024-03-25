import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:trackizer/Signin.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late TextEditingController _passwordController;
  PasswordStrength _passwordStrength = PasswordStrength.none;
  bool _isObscured = true;

  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
    _passwordController.addListener(_updatePasswordStrength);
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  void _updatePasswordStrength() {
    String password = _passwordController.text;
    if (password.isEmpty) {
      setState(() {
        _passwordStrength = PasswordStrength.none;
      });
    } else if (password.length < 6) {
      setState(() {
        _passwordStrength = PasswordStrength.weak;
      });
    } else if (password.length < 10) {
      setState(() {
        _passwordStrength = PasswordStrength.medium;
      });
    } else {
      setState(() {
        _passwordStrength = PasswordStrength.strong;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 30, 30),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.04,
                ),
                child: Image(
                  image: AssetImage("assets/images/logo.png"),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "E-mail Address",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    TextField(
                      controller: _passwordController,
                      style: TextStyle(color: Colors.white),
                      obscureText: _isObscured,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2.0),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _isObscured = !_isObscured;
                        });
                      },
                      icon: Icon(
                        _isObscured ? Icons.visibility : Icons.visibility_off,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              PasswordDifficultyBar(strength: _passwordStrength),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Use 8 or more characters with a mix of letters, numbers & symbols.",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(Signin());
                  },
                  child: Text(
                    "Get started! it's free!",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    minimumSize: Size(
                      MediaQuery.of(context).size.width * 0.8,
                      0,
                    ),
                    backgroundColor: const Color.fromARGB(255, 255, 98, 0),
                    shadowColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Text(
                "Already have an account?",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "SignIn",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  minimumSize: Size(
                    MediaQuery.of(context).size.width * 0.8,
                    0,
                  ),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PasswordDifficultyBar extends StatelessWidget {
  final PasswordStrength strength;

  const PasswordDifficultyBar({Key? key, required this.strength})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      margin: EdgeInsets.only(top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PasswordStrengthIndicator(
            active: strength != PasswordStrength.none,
            color: strength == PasswordStrength.weak ? Colors.red : Colors.grey,
          ),
          PasswordStrengthIndicator(
            active: strength == PasswordStrength.medium ||
                strength == PasswordStrength.strong,
            color: strength == PasswordStrength.strong
                ? Colors.green
                : strength == PasswordStrength.weak ||
                        strength == PasswordStrength.none
                    ? Colors.grey
                    : Colors.orange,
          ),
          PasswordStrengthIndicator(
            active: strength == PasswordStrength.strong,
            color: strength == PasswordStrength.strong
                ? Colors.green
                : Colors.grey,
          ),
          PasswordStrengthIndicator(
            active: strength == PasswordStrength.strong,
            color: strength == PasswordStrength.strong
                ? Colors.green
                : Colors.grey,
          ),
        ],
      ),
    );
  }
}

enum PasswordStrength {
  none,
  weak,
  medium,
  strong,
}

class PasswordStrengthIndicator extends StatelessWidget {
  final bool active;
  final Color color;

  const PasswordStrengthIndicator({
    Key? key,
    required this.active,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      height: 5,
      decoration: BoxDecoration(
        color: active ? color : Colors.transparent,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
