import 'package:codi/screens/new_account_screen.dart';
import 'package:flutter/material.dart';
import 'package:codi/icon/custom__icon__login_icons.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
              child: Text("로그인",
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
              margin: EdgeInsets.only(top: 14),
              width: 320,
              height: 52,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "비밀번호 *",
                  hintStyle: TextStyle(
                     color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 22, right: 12),
                    child: Icon(
                      Custom_Icon_Login.password,
                      size: 24,
                      color: Theme.of(context).colorScheme.onBackground,
                    )
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
              margin: EdgeInsets.only(top: 18),
              width: 302,
              height: 34,
              child: Text(
                "계속하기를 클릭하면 이용 약관과 개인정보 처리방침에 동의하게 됩니다.",
                  style: TextStyle(
                  fontWeight: FontWeight.w200,
                  color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                  fontSize: 12,
                  fontFamily: 'Pretendard-Light'),
              ),
            ),

            
            Container(
              margin: EdgeInsets.only(top: 38),
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
              margin: EdgeInsets.only(top: 154),
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
                  //누르면 실행될 동작
                },
                child: Center(
                  child: Text(
                    "로그인",
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewAccountScreen(),
                    ),
                  );
                },
                child: Center(
                  child: Text(
                    "새 계정 생성",
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
