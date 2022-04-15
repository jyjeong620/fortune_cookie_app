import 'package:flutter/material.dart';
import 'package:fortune_cookie_app/fortune_cookie.dart';
import 'package:fortune_cookie_app/fortune_cookie_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FortuneCookieBox _cookieBox = FortuneCookieBox();
  late FortuneCookie _cookie;

  @override
  void initState() {
    super.initState();

    _cookie = _cookieBox.pick;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Fortune Cookie")),
      ),

      body: Column(children: [
        Image.asset("assets/images/fortune-cookie.jpg"),
        Text(
          _cookie.message,
          style: const TextStyle(fontSize: 18),
        ),
        SizedBox(
          width: 300,
          height: 50,
          child: MaterialButton(
            onPressed: () => setState(() {
              _cookie = _cookieBox.pick;
            }),
            color: Colors.red,
            child: const Text(
              "Lucky!",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        )
      ]),
    );
  }
}

// TODO: 19. 이제 각자의 취향대로 앱을 꾸며주세요!
