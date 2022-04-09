import 'package:flutter/material.dart';
import 'package:fortune_cookie_app/fortune_cookie.dart';
import 'package:fortune_cookie_app/fortune_cookie_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // TODO: 14. FortuneCookieBox 변수를 선언하고 초기화 해주세요.
  final _box = FortuneCookieBox();

  // TODO: 15. 현재 표시 중인 쿠키를 가르키는 _cookie 변수를 선언해주세요.
  late FortuneCookie _cookie;

  // TODO: 16. 앱 실행 시 표시될 쿠키를 초기화해주세요. (Hint! initState 메서드를 오버라이드 해주세요.)
  @override
  void initState() {
    super.initState();

    _cookie = _box.pick;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 1. AppBar를 추가해주세요.
      appBar: AppBar(
        // TODO: 2. AppBar 타이틀을 "Fortune Cookie"로 하고 중앙 정렬 해주세요.
        title: const Text("Fortune Cookie"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // TODO: 4. 화면에 fortune-cookie.jpg 이미지를 표시해주세요.
          Image.asset("assets/images/fortune-cookie.jpg"),
          // TODO: 5. 이미지 아래에 텍스트를 추가하고 글자 크기를 18으로 설정해주세요.
          Text(
            _cookie.message,
            style: const TextStyle(fontSize: 18),
          ),
          // TODO: 6. 텍스트 아래에 붉은색 버튼(가로 300, 높이 50)을 추가해주세요. (Hint! Column을 사용하세요.)
          SizedBox(
            width: 300,
            height: 50,
            child: MaterialButton(
              // TODO: 17. 버튼이 클릭되면 텍스트 메시지가 업데이트되도록 처리해주세요. (Hint! 상태 갱신은 setState 메서드를 사용하세요.)
              onPressed: () => setState(() {
                _cookie = _box.pick;
              }),
              color: Colors.red,
              // TODO: 7. 버튼 텍스트는 Lucky!로, 글자 크기를 20, 색상을 흰색으로 설정해주세요.
              child: const Text(
                "Lucky!",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// TODO: 19. 이제 각자의 취향대로 앱을 꾸며주세요!
