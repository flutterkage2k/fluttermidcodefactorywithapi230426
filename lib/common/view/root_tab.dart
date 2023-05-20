import 'package:flutter/material.dart';
import 'package:fluttermidcodefactorywithapi230426/common/const/colors.dart';
import 'package:fluttermidcodefactorywithapi230426/common/layout/default_layout.dart';

class RootTab extends StatefulWidget {
  const RootTab({super.key});

  @override
  State<RootTab> createState() => _RootTabState();
}

class _RootTabState extends State<RootTab> with SingleTickerProviderStateMixin {
  late TabController controller;

  //late 값은 나중에 선언이 될거야 라는 것을 미리 말해주는거
  //아니면 TabController ? 선언해서 TabController?  이렇게 할 수 도 있다. 단점도 분명히 존재한다.

  int index = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
    controller.addListener(tabListener);
  }

  @override
  void dispose() {
    controller.removeListener(tabListener);
    super.dispose();
  }

  void tabListener() {
    setState(() {
      index = controller.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
        title: '딜리버리',
        child: TabBarView(
          //아래 physics 를 넣게 되면 좌우 움직임을 막을 수 있다. 버튼으로만 이동가능
          physics: NeverScrollableScrollPhysics(),
          controller: controller,
          children: [
            Center(
              child: Container(
                child: Text('홈'),
              ),
            ),
            Center(
              child: Container(
                child: Text('음식'),
              ),
            ),
            Center(
              child: Container(
                child: Text('주문'),
              ),
            ),
            Center(
              child: Container(
                child: Text('프로필'),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: PRIMARY_COLOR,
          unselectedItemColor: BODY_TEXT_COLOR,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          //type 가 중요함.
          type: BottomNavigationBarType.fixed,

          //setState 가 없어서 갱신이 안되는 것이다.
          onTap: (int index) {
            controller.animateTo(index);
          },
          currentIndex: index,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.fastfood_outlined,
              ),
              label: '음식',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.receipt_long_outlined,
              ),
              label: '주문',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              label: '프로필',
            )
          ],
        ));
  }
}
