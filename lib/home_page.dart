import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // TODO: 14. FortuneCookieBox 변수를 선언하고 초기화 해주세요.
  // TODO: 15. 현재 표시 중인 쿠키를 가르키는 _cookie 변수를 선언해주세요.

  // TODO: 16. 앱 실행 시 표시될 쿠키를 초기화해주세요. (Hint! initState 메서드를 오버라이드 해주세요.)

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
