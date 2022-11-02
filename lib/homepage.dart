import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyApplication extends StatefulWidget {
  const MyApplication({super.key});

  @override
  State<MyApplication> createState() => _MyApplicationState();
}

class _MyApplicationState extends State<MyApplication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Pikup",
          style: TextStyle(
              fontSize: 40,
              color: Colors.black,
              backgroundColor: Colors.grey,
              fontWeight: FontWeight.bold,
              fontFamily: "Ubuntu"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            child: Image.asset('assets\images\flutterlogo.png'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: TextFormField(
                    style: TextStyle(fontFamily: "Ubuntu"),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 219, 218, 218),
                      labelText: 'First Name',
                      hintText: 'Enter First Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    onChanged: (String value) {},
                    validator: (value) {
                      return value!.isEmpty ? 'please enter first name' : null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: TextFormField(
                    style: TextStyle(fontFamily: "Ubuntu"),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 219, 218, 218),
                      labelText: 'Last Name',
                      hintText: 'Enter Last Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    onChanged: (String value) {},
                    validator: (value) {
                      return value!.isEmpty ? 'please enter last name' : null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: TextFormField(
                    style: TextStyle(fontFamily: 'Ubuntu'),
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 219, 218, 218),
                      labelText: 'Phone Number',
                      hintText: 'Enter Phone Number',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    onChanged: (String value) {},
                    validator: (value) {
                      return value!.isEmpty
                          ? 'please enter Phone number'
                          : null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: TextFormField(
                    style: TextStyle(fontFamily: "Ubuntu"),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 219, 218, 218),
                      labelText: 'Email',
                      hintText: 'Enter Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    onChanged: (String value) {},
                    validator: (value) {
                      return value!.isEmpty ? 'please enter Email' : null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: TextFormField(
                    style: TextStyle(fontFamily: "Ubuntu"),
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 219, 218, 218),
                      labelText: 'Password',
                      hintText: 'Enter Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    onChanged: (String value) {},
                    validator: (value) {
                      return value!.isEmpty ? 'please enter Password' : null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 35,
                    color: Colors.teal,
                    onPressed: () {},
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(fontFamily: "Ubuntu"),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    textColor: Colors.white,
                  ),
                ),
                Row(
                  children: <Widget>[
                    const Text(''),
                    TextButton(
                      child: const Text(
                        'I Already Have An Account',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontFamily: "Ubuntu"),
                      ),
                      onPressed: () {
                        //signup screen
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            )),
          )
        ],
      ),
    );
  }
}
