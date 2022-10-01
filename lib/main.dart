import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Application name
        title: 'Signup Page',
        theme: ThemeData(
          // Application theme data, you can set the colors for the application as
          // you want
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Signup page'));
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Container(
          margin: EdgeInsets.only(left: 16.0, top: 10.0),
          decoration: BoxDecoration(
              border: Border.all(width: 2.0),
              shape: BoxShape.rectangle,
              color: Color(0xffFBC70C),
              borderRadius: BorderRadius.circular(10.0)),
          height: 10.0,
          width: 10.0,
          child: IconButton(
            padding: const EdgeInsets.all(0.0),
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
          ),
        ),
        title: Center(
          child: Text(
            'Create an Account',
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ),
      ),
      body: //We add Extr
          Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 25.0),
              height: 150,
              width: 150,
              child: Image.asset('assets/profile_pic.jpg'),
              //To include an image in your project, there are 2 ways you can achieve this.
              //1. You can directly use a web image, and use Image.network(''), instead of asset and paste the url in the quotes.
              //2. Or You can follow the procedure which I did, which was, 
              //   Make a assets folder in the file structure in the path <project-name>/assets
              //   Add your desired pic in jpg,jpeg or png file into that folder
              //   Then Navigate to the pubspec.yaml file in the folder structure.
              //   Scroll down and uncomment the assets part of the code. Make sure you do not mess up the indentation.Once uncommented keep it as it is.
              //   Then remove the already written dummy assets carefully so that you only remove the path and not the '-' sign.
              //   Then paste in the path of your image such as 'assets/<image-file-name.<extension-name>>'. Make sure to write the extension
              //   Followed by runnig the following command in terminal 'flutter pub get'
              //   Then paste your path in the Image.asset('') as written above.
              decoration: const BoxDecoration(shape: BoxShape.circle),
            ),
          ),
          Container(
            height: 50.0,
            margin: const EdgeInsets.all(10.0),
            child: TextField(
              keyboardType: TextInputType.name,//Gives a normal keyboard
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(width: 3.0, color: Color(0xffbebebe)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(width: 3.0, color: Color(0xfffbc70c)),
                ),
                labelText: 'Username',
                labelStyle: TextStyle(
                    color: Color(0xffbebebe), fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Container(
            height: 50.0,
            margin: const EdgeInsets.all(10.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,//Gives a keyboard having an @ sign to make it convinient to the user
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(width: 3.0, color: Color(0xffbebebe)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(width: 3.0, color: Color(0xfffbc70c)),
                ),
                labelText: 'Email Address',
                labelStyle: TextStyle(
                    color: Color(0xffbebebe), fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Container(
            height: 50.0,
            margin: const EdgeInsets.all(10.0),
            child: TextField(
              keyboardType: TextInputType.phone,//Gives a keyboard containing only Numbers
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(width: 3.0, color: Color(0xffbebebe)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(width: 3.0, color: Color(0xfffbc70c)),
                ),
                labelText: 'Phone Number',
                labelStyle: TextStyle(
                    color: Color(0xffbebebe), fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Container(
            height: 50.0,
            margin: const EdgeInsets.all(10.0),
            child: TextField(
              obscureText:
                  true, //Creates an obscure text visible to the user instead of a String
              keyboardType: TextInputType
                  .visiblePassword, //Gives the user a keyboard specifically for password
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(width: 3.0, color: Color(0xffbebebe)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(width: 3.0, color: Color(0xfffbc70c)),
                ),
                labelText: 'Password',
                labelStyle: TextStyle(
                    color: Color(0xffbebebe), fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Container(
            height: 50.0,
            margin: const EdgeInsets.all(10.0),
            child: TextField(
              obscureText:
                  true, //Creates an obscure text visible to the user instead of a String
              keyboardType: TextInputType
                  .visiblePassword, //Gives the user a keyboard specifically for password
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(width: 3.0, color: Color(0xffbebebe)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(width: 3.0, color: Color(0xfffbc70c)),
                ),
                labelText: 'Re-Enter Password',
                labelStyle: TextStyle(
                    color: Color(0xffbebebe), fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: TextButton(
                onPressed: () {},
                //We provide styling to the button making it more appealing
                style: TextButton.styleFrom(
                    //To give styling to a button using TextButton is the most efficient way
                    backgroundColor: Color(0xffFBC70C), //Providing a color
                    shape: RoundedRectangleBorder(
                        //Giving a specific shapw
                        borderRadius: BorderRadius.circular(
                            15.0)), //Border Radius of 15 pixels
                    elevation: 5.0, //Elevation of 5 pixels
                    shadowColor: Colors.grey, //Color to the shadow
                    padding: EdgeInsets.symmetric(
                        horizontal: 105.0,
                        vertical: 25.0)), //This is a specific type of padding which gives equal padding on both horizontally and vertically. One can specify different paading for different sides using EdgeInsets.only()
                child: Text(
                  'Create an account',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(//Implementation of Rows, used to render elements horizontally
              mainAxisAlignment: MainAxisAlignment.center,//Used to centre the elements of Rows
              children: const [
                Text(//Grey part of text
                  'By Continuing, you accept our ',
                  style: TextStyle(
                    color: Color(0xffbebebe),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(//Yellow Part of text
                  'Terms Conditions',
                  style: TextStyle(
                    color: Color(0xffFBC70C),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Row(//Grey part of text
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(//Grey part of text
                'and ',
                style: TextStyle(
                  color: Color(0xffbebebe),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(//Yellow Part of text
                'Privacy Policy',
                style: TextStyle(
                  color: Color(0xffFBC70C),
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          )
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
