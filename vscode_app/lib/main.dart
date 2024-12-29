
import 'package:flutter/material.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Column(
          children: <Widget>[
            SizedBox(height: 82,),
            Align(
              alignment: Alignment.center,
              child: Text("로그인",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Theme.of(context).colorScheme.onBackground,
                fontSize: 20,
                fontFamily: 'Pretendard-Bold'),
              ),
            ),


            SizedBox(height: 10,),
            Text("계정을 입력하거나 소셜 계정으로 로그인 하세요",
                style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Theme.of(context).colorScheme.onBackground,
                fontSize: 14,
                fontFamily: 'Pretendard-Bold'),
            ),


            SizedBox(height: 44,),


            SizedBox(
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


            SizedBox(height: 14,),
            

            SizedBox(
              width: 320,
              height: 52,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Password*", // 힌트 텍스트
                  hintStyle: TextStyle(
                     color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 22, right: 12), // 아이콘과 텍스트 간격 조정
                    child: Image.asset(
                      'assets/img/Password.png', // 이미지 경로
                      width: 24,
                      height: 24,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0), // 라운드 테두리
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                      width: 1.5, // 테두리 두께
                    ),
                  ),
                ),
              ),
            ),


          SizedBox(height: 18,),


          SizedBox(
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
          
          
          SizedBox(height: 38,),

          
          Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Divider(
                    color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                    thickness: 1,
                    indent: 20,
                    endIndent: 10,
                  ),
                ),
                
                // 중앙 텍스트
                Text(
                  "Or Sign In With",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 12,
                    fontFamily: 'Pretendard-Light',
                  ),
                ),

                // 오른쪽 Divider
                Expanded(
                  child: Divider(
                    color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                    thickness: 1, // 선의 두께
                    indent: 10, // 텍스트와의 간격
                    endIndent: 20, // 오른쪽 여백
                  ),
                ),
              ],
            ),
          ),


          SizedBox(height: 19,),


          Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    //누르면 실행될 동작
                  },
                  child: Container(
                    width: 95,
                    height: 52,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(30.0), // 둥근 테두리
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                          child: Image.asset(
                            'assets/img/google.png', // 이미지 경로
                            width: 32,
                            height: 32,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              
                SizedBox(width: 17,),

                GestureDetector(
                  onTap: () {
                    //누르면 실행될 동작
                  },
                  child: Container(
                    width: 95,
                    height: 52,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(30.0), // 둥근 테두리
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                          child: Image.asset(
                            'assets/img/facebook.png', // 이미지 경로
                            width: 32,
                            height: 32,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(width: 17,),

                GestureDetector(
                  onTap: () {
                    //누르면 실행될 동작
                  },
                  child: Container(
                    width: 95,
                    height: 52,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(30.0), // 둥근 테두리
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                          child: Image.asset(
                            'assets/img/kakao_talk.png', // 이미지 경로
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


          SizedBox(height: 154,),


          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    //누르면 실행될 동작
                  },
                  child: Container(
                    width: 320,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      border: Border.all(
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(30.0), // 둥근 테두리
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 141, vertical: 20),
                          child: Text(
                            "로그인",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 14,
                              fontFamily: 'Pretendard-bold',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              
                SizedBox(width: 14,),

                GestureDetector(
                  onTap: () {
                    //누르면 실행될 동작
                  },
                  child: Container(
                    width: 320,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      border: Border.all(
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(30.0), // 둥근 테두리
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 141, vertical: 20),
                          child: Text(
                            "새 계정 생성",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 14,
                              fontFamily: 'Pretendard-bold',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

            
              ],
            ),
          ),



            
          ],
        ),
      ),
    );
  }
}
