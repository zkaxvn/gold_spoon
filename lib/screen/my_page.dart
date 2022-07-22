import 'package:flutter/material.dart';
import 'package:gold_spoon/screen/spoon_shop.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '마이페이지',
          style: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.black, //백그라운드 컬러
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _Header(
                headerIcon: Icon(
                  Icons.question_answer_outlined,
                  color: Color(0xFFF9D391),
                  size: 40.0,
                ),
                headerName: '자기소개',
              ),
              _Header(
                headerIcon: Icon(
                  Icons.camera_alt_outlined,
                  color: Color(0xFFF9D391),
                  size: 40.0,
                ),
                headerName: '프로필사진',
              ),
              _Header(
                headerIcon: Icon(
                  Icons.military_tech,
                  color: Color(0xFFF9D391),
                  size: 40.0,
                ),
                headerName: '인증 뱃지',
              ),
              _Header(
                headerIcon: Icon(
                  Icons.maps_home_work_outlined,
                  color: Color(0xFFF9D391),
                  size: 40.0,
                ),
                headerName: '백신/직장/학교',
              ),
            ],
          ),
          Container(
            width: 350,
            child: Divider(
              color: Colors.grey,
              thickness: 1.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                _MyPageTextColumn(
                  goUrl: '/spoonShop',
                  columnName: '  소품샵',
                  iconImage: Icon(
                    Icons.store_mall_directory_outlined,
                    color: Color(0xFFF9D391),
                  ),
                ),
                _MyPageTextColumn(
                  goUrl: '/spoonShop',
                  columnName: '  공지사항',
                  iconImage: Icon(
                    Icons.volume_down,
                    color: Color(0xFFF9D391),
                  ),
                ),
                _MyPageTextColumn(
                  goUrl: '/spoonShop',
                  columnName: '  지인 연락처 차단',
                  iconImage: Icon(
                    Icons.phone_disabled,
                    color: Color(0xFFF9D391),
                  ),
                ),
                _MyPageTextColumn(
                  goUrl: '/spoonShop',
                  columnName: '  골드스푼이란?',
                  iconImage: Icon(
                    Icons.error_outline,
                    color: Color(0xFFF9D391),
                  ),
                ),
                _MyPageTextColumn(
                  goUrl: '/spoonShop',
                  columnName: '  문의하기',
                  iconImage: Icon(
                    Icons.help_outline,
                    color: Color(0xFFF9D391),
                  ),
                ),
                _MyPageTextColumn(
                  goUrl: '/spoonShop',
                  columnName: '  계정관리',
                  iconImage: Icon(
                    Icons.mail_outline,
                    color: Color(0xFFF9D391),
                  ),
                ),
                _MyPageTextColumn(
                  goUrl: '/spoonShop',
                  columnName: '  설정',
                  iconImage: Icon(
                    Icons.store_mall_directory_outlined,
                    color: Color(0xFFF9D391),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomSheet: _Bottom(),
    );
  }
}

class _Header extends StatelessWidget {
  final String headerName;
  final Icon headerIcon;

  const _Header({
    required this.headerName,
    required this.headerIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          children: [
            headerIcon,
            Text(
              headerName,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MyPageTextColumn extends StatelessWidget {
  final String columnName;
  final Icon iconImage;
  final String goUrl;

  const _MyPageTextColumn({
    required this.columnName,
    required this.iconImage,
    required this.goUrl,

    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              iconImage,
              Text(
                columnName,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 15.0,
            color: Colors.grey[500],
          ),
        ],
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(
          goUrl,
        );
      },
    );
  }
}

class _Bottom extends StatelessWidget {
  const _Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.all(16.0), //const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFEEA15E),
                padding: EdgeInsets.all(10.0),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(8.0),
                ),
                alignment: Alignment.bottomRight,
                minimumSize: Size(
                  200.0, //가로
                  100.0, //세로
                )),
            child: Text(
              '제보하러 가기>',
              style: TextStyle(
                fontSize: 13.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
