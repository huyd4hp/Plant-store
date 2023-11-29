import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    super.key,
    required this.title,
    required this.country,
    required this.price,
  });
  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: defaultPadding * 5,
        top: defaultPadding,
        right: defaultPadding,
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
              text: "$title\n",
              children: [
                TextSpan(
                    text: country,
                    style: const TextStyle(
                      fontSize: 15,
                      color: primaryColor,
                      fontWeight: FontWeight.normal,
                    )),
              ],
            ),
          ),
          const Spacer(),
          Text(
            "\$$price",
            style: const TextStyle(
              fontSize: 20,
              color: primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
