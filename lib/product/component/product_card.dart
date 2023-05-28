import 'package:flutter/material.dart';
import 'package:fluttermidcodefactorywithapi230426/common/const/colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      // IntrinsicHeight 는 최대크기를 가지고 있는 크기로 나머지도 맞추어준다.
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              8.0,
            ),
            child: Image.asset(
              'asset/img/food/ddeok_bok_gi.jpg',
              width: 110,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '떡볶이',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '전통 떡볶이의 정석!\n맛있습니다.',
                maxLines: 2,

                overflow: TextOverflow.ellipsis, //TextOverflow.elipsis 는 ... 으로 만든다.
                style: TextStyle(
                  color: BODY_TEXT_COLOR,
                  fontSize: 14.0,
                ),
              ),
              Text(
                '₩10000',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: PRIMARY_COLOR,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
