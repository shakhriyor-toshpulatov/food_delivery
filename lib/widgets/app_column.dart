import 'package:flutter/material.dart';
import 'package:foood_delivery/widgets/small_text.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: Dimensions.height15, left: 15, right: 15),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BigText(text: text, size: Dimensions.font26,),
            SizedBox(height: Dimensions.height10),
            Row(
              children: [
                Wrap(
                  children: List.generate(5, (index) {
                    return const Icon(
                      Icons.star,
                      color: AppColors.mainColor,
                      size: 15,
                    );
                  }),
                ),
                const SizedBox(
                  width: 10,
                ),
                SmallText(text: "4.8"),
                const SizedBox(
                  width: 10,
                ),
                SmallText(text: "1287"),
                const SizedBox(
                  width: 10,
                ),
                SmallText(text: "Comments"),
              ],
            ),
            SizedBox(height: Dimensions.height20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                IconAndTextWidget(
                    icon: Icons.circle_sharp,
                    text: "Normal",
                    iconColor: AppColors.iconColor1),
                IconAndTextWidget(
                    icon: Icons.location_on,
                    text: "1.7km",
                    iconColor: AppColors.mainColor),
                IconAndTextWidget(
                    icon: Icons.access_time_rounded,
                    text: "33min",
                    iconColor: AppColors.iconColor2),
              ],
            ),
          ]
      ),
    );
  }
}

