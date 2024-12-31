import 'package:flutter/material.dart';

void main() {
  runApp(NewAccountScreen());
}

class NewAccountScreen extends StatelessWidget {
  const NewAccountScreen({Key? key}) : super(key: key);

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
              margin: EdgeInsets.only(top: 10),
              child: Text("아래 정보를 입력하시거나 소셜 계정으로 등록하세요",
                style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Theme.of(context).colorScheme.onBackground,
                fontSize: 14,
                fontFamily: 'Pretendard-Bold'),
              ),
            ),
            

            Container(
              margin: EdgeInsetsDirectional.only(top: 44),
              width: 320,
              height: 52,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter your name*",
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
                  hintText: "Enter your Email*",
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
                  hintText: "Password*",
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
                  hintText: "Confirm Password **",
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
              margin: EdgeInsets.only(top: 22),
              width: 320,
              height: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                border: Border.all(
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: GestureDetector(
                onTap: () {
                  //누르면 실행될 동작
                },
                child: Center(
                  child: Text(
                    "새 계정 생성",
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
