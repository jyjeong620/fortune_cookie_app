import 'package:fortune_cookie_app/fortune_cookie.dart';

// TODO: 10. FortuneCookieBox 클래스 만들어주세요.
class FortuneCookieBox {
  // TODO: 11. FortuneCookieBox 클래스에 List<FortuneCookie> _cookies 멤버를 추가해주세요.
  final List<FortuneCookie> _cookies = [
    // TODO: 12. 아래 메세지를 이용해서 FortuneCookie 인수를 만들고 _cookies에 추가해주세요.
    const FortuneCookie("한줄 코드라도 서로 거들면 낫다."),
    const FortuneCookie("팀장 한마디에 천줄코드 안써도 된다."),
    const FortuneCookie("버그를 잡으려다 잡은버그 놓친다."),
    const FortuneCookie("아니쓴 코드에 오류날까?"),
    const FortuneCookie("길고 짧은 것은 strlen을 써봐야 안다."),
    const FortuneCookie("보기 좋은 코드가 디버깅 하기 좋다."),
    const FortuneCookie("버그보고 놀란가슴 오타보고 놀란다."),
    const FortuneCookie("제 코드 구린줄 모른다."),
    const FortuneCookie("개 같이 코딩해서 정승처럼 사표쓴다."),
    const FortuneCookie("될성부른 코드는 들여쓰기부터 안다."),
  ];

  int _index = 0;

  // TODO: 13. FortuneCookieBox 클래스에 pick getter를 추가하여 FortuneCookie를 순서대로 반 반환해주세요.
  FortuneCookie get pick {
    if (_index == _cookies.length) {
      _index = 0;
    }

    return _cookies[_index++];
  }
}
