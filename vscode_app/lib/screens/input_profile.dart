import 'package:flutter/material.dart';
import 'package:codi/icon/custom__icon__login_icons.dart';

void main() {
  runApp(MaterialApp(
    home: InputprofileScreen(),
  ));
}

class InputprofileScreen extends StatefulWidget {
  const InputprofileScreen({Key? key}) : super(key: key);

  @override
  _InputprofileScreenState createState() => _InputprofileScreenState();
}

class _InputprofileScreenState extends State<InputprofileScreen> {
  String? _selectedjob = 'job';
  String? _selectedgender = 'gender';
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
              child: Text("프로필 입력",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Theme.of(context).colorScheme.onBackground,
                fontSize: 20,
                fontFamily: 'Pretendard-Bold'),
              ),
            ),
            

            Container(
              margin: EdgeInsetsDirectional.only(top: 52),
              width: 94,
              height: 94,
              child: Image.asset(
                'assets/img/profile_photo.png',
                width: 94,
                height: 94,
              ),
            ),

           Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,  // 가로 중앙 정렬
              children: [
                Row(
                  children: [
                    Radio<String>(
                      value: 'programmer',
                      groupValue: _selectedjob,
                      activeColor: Theme.of(context).colorScheme.primary, // 색상 추가
                      onChanged: (String? value) {
                        setState(() {
                          _selectedjob = value!;
                        });
                      },
                    ),
                    Text('개발자',
                      style: TextStyle(
                        fontSize: 13,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),  // 간격 추가
                Row(
                  children: [
                    Radio<String>(
                      value: 'designer',
                      groupValue: _selectedjob,
                      activeColor: Theme.of(context).colorScheme.primary,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedjob = value!;
                        });
                      },
                    ),
                    Text('디자이너',
                      style: TextStyle(
                        fontSize: 13,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),


          Container(
            margin: EdgeInsetsDirectional.only(top: 36),
            width: 320,
            height: 52,
            child: TextField(
              decoration: InputDecoration(
                hintText: "계정 이름 *",
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
                hintText: "생년월일 *",
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
            height: 16,
            child: Text(
              "성별",
                style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                fontSize: 14,
                fontFamily: 'Pretendard'),
            ),
          ),


          Container(
            margin: EdgeInsets.only(top: 30),
            width: 350,
            height: 20,
            child: Row(
              children: [
                Row(
                  children: [
                    Radio<String>(
                      value: 'none',
                      groupValue: _selectedgender,
                      activeColor: Theme.of(context).colorScheme.primary,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedgender = value!;
                        });
                      },
                    ),
                    Text('선택 안함',
                      style: TextStyle(
                        fontSize: 13,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 12),
                Row(
                  children: [
                    Radio<String>(
                      value: 'man',
                      groupValue: _selectedgender,
                      activeColor: Theme.of(context).colorScheme.primary,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedgender = value!;
                        });
                      },
                    ),
                    Text('남자',
                      style: TextStyle(
                        fontSize: 13,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 12),
                Row(
                  children: [
                    Radio<String>(
                      value: 'woman',
                      groupValue: _selectedgender,
                      activeColor: Theme.of(context).colorScheme.primary,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedgender = value!;
                        });
                      },
                    ),
                    Text('여자',
                      style: TextStyle(
                        fontSize: 13,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),


            Container(
              margin: EdgeInsets.only(top: 29),
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
              margin: EdgeInsets.only(top: 121),
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
                    "코디 시작하기",
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
                
           
          ],
        ),
      ),
    );
  }
}