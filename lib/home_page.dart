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

      // TODO: 17. 버튼이 클릭되면 텍스트 메시지가 업데이트되도록 처리해주세요. (Hint! 상태 갱신은 setState 메서드를 사용하세요.)
      body: Column(children: [
        Image.asset("assets/images/fortune-cookie.jpg"),
        const Text(
          "텍스트 입니다 ",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          width: 300,
          height: 50,
          child: MaterialButton(
            onPressed: () {},
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
