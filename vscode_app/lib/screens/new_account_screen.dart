import 'package:codi/screens/input_profile.dart';
import 'package:flutter/material.dart';
import 'package:codi/icon/custom__icon__login_icons.dart';

void main() {
  runApp(NewAccountScreen());
}

class NewAccountScreen extends StatefulWidget {
  const NewAccountScreen({Key? key}) : super(key: key);

  @override
  _NewAccountScreenState createState() => _NewAccountScreenState();
}

class _NewAccountScreenState extends State<NewAccountScreen> {
  final _controller = TextEditingController();
  IconData _password_length = Icons.check; //기본 아이콘 수정 필요
  String _password = "";

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _updateText() {
    setState(() {
      _password = _controller.text;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      _updateText();
      _updateIcon();
    });
  }

  void _updateIcon() {
  setState(() {
    int password_length = _controller.text.length;
    if (8 <= password_length && password_length <= 20) {
      _password_length = Icons.check_box;
    } else {
      _password_length = Icons.check;
    }
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 82),
              alignment: Alignment.center,
              child: Text("계정 생성",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Theme.of(context).colorScheme.onBackground,
                fontSize: 20,
                fontFamily: 'Pretendard-Bold'),
              ),
            ),
            

            Container(
              margin: EdgeInsetsDirectional.only(top: 62),
              width: 320,
              height: 52,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "이메일 *",
                  hintStyle: TextStyle(
                     color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 22, right: 12),
                    child: Image.asset(
                      'assets/img/Email.png',
                      width: 24,
                      height: 24,
                      color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                      width: 1.5,
                    ),
                  ),
                ),
              ),
            ),


            Container(
              margin: EdgeInsets.only(top: 4),
              width: 302,
              height: 16,
              child: Text(
                "올바르지 않은 이메일 형식입니다",
                  style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 11,
                  fontFamily: 'Spoqa Han Sans Neo'),
              ),
            ),


            Container(
              margin: EdgeInsets.only(top: 4),
              width: 320,
              height: 52,
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: "비밀번호 *",
                  hintStyle: TextStyle(
                     color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 22, right: 12),
                    child: Image.asset(
                      'assets/img/Password.png',
                      width: 24,
                      height: 24,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                      width: 1.5,
                    ),
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 14),
              width: 320,
              height: 52,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "비밀번호 확인 *",
                  hintStyle: TextStyle(
                     color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 22, right: 12),
                    child: Image.asset(
                      'assets/img/Password.png',
                      width: 24,
                      height: 24,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                      width: 1.5,
                    ),
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 4),
              width: 302,
              height: 16,
              child: Text(
                "비밀번호가 일치하지 않습니다",
                  style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 11,
                  fontFamily: 'Spoqa Han Sans Neo'),
              ),
            ),


            Container(
              margin: EdgeInsets.only(top: 2),
              width: 302,
              height: 16,
              child: Row(
                children: <Widget>[
                  Icon(
                    _password_length,
                    size: 12,
                    color: Theme.of(context).colorScheme.primary,
                    ),
                    Text(
                    "8~20자",
                      style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 11,
                      fontFamily: 'Spoqa Han Sans Neo'),
                  ),
                ]
              )
            ),


            Container(
              margin: EdgeInsets.only(top: 8),
              width: 302,
              height: 16,
              child: Row(
                children: <Widget>[
                  Icon(
                    Custom_Icon_Login.checkbox,
                    size: 12,
                    color: Theme.of(context).colorScheme.primary,
                    ),
                    Text(
                    "문자, 숫자, 특수문자",
                      style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 11,
                      fontFamily: 'Spoqa Han Sans Neo'),
                  ),
                ]
              )
            ),


            Container(
              margin: EdgeInsets.only(top: 28),
              width: 302,
              height: 34,
              child: Text(
                "아래 다음을 클릭하면 이용 약관과 개인정보 처리방침에 동의하게 됩니다.",
                  style: TextStyle(
                  fontWeight: FontWeight.w200,
                  color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                  fontSize: 12,
                  fontFamily: 'Pretendard-Light'),
              ),
            ),

            
            Container(
              margin: EdgeInsets.only(top: 18),
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                      thickness: 1,
                      indent: 20,
                      endIndent: 10,
                    ),
                  ),
                  
                  Text(
                    "Or Sign In With",
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 12,
                      fontFamily: 'Pretendard-Light',
                    ),
                  ),

                  Expanded(
                    child: Divider(
                      color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                      thickness: 1,
                      indent: 10,
                      endIndent: 20,
                    ),
                  ),
                ],
              ),
            ),


            Container(
              margin: EdgeInsets.only(top: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 95,
                    height: 52,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: GestureDetector(
                    onTap: () {
                      //누르면 실행될 동작
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                          child: Image.asset(
                            'assets/img/google.png',
                            width: 32,
                            height: 32,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                
                  Container(
                    margin: EdgeInsets.only(left: 17),
                    width: 95,
                    height: 52,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: GestureDetector(
                    onTap: () {
                      //누르면 실행될 동작
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                          child: Image.asset(
                            'assets/img/facebook.png',
                            width: 32,
                            height: 32,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  Container(
                    margin: EdgeInsets.only(left: 17),
                    width: 95,
                    height: 52,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: GestureDetector(
                    onTap: () {
                      //누르면 실행될 동작
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                          child: Image.asset(
                            'assets/img/kakao_talk.png',
                            width: 32,
                            height: 32,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),


            Container(
              margin: EdgeInsets.only(top: 22),
              width: 320,
              height: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                border: Border.all(
                  width: 1.5,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InputprofileScreen(),
                    ),
                  );
                },
                child: Center(
                  child: Text(
                    "다음",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 14,
                      fontFamily: 'Pretendard-bold',
                    ),
                  ),
                )
              ),
            ),
                
            Container(
              margin: EdgeInsets.only(top: 14),
              width: 320,
              height: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                border: Border.all(
                  width: 1.5,
                  color: Theme.of(context).colorScheme.primary,
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: GestureDetector(
                onTap: () {
                  //누르면 실행될 동작
                },
                child: Center(
                  child: Text(
                    "로그인",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 14,
                      fontFamily: 'Pretendard-bold',
                    ),
                  ),
                )
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
