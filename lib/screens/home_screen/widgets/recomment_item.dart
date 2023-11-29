import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class RecommendPlant extends StatelessWidget {
  const RecommendPlant({
    super.key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.onPress,
  });
  final String image, title, country;
  final int price;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        top: defaultPadding / 2,
        left: defaultPadding,
        right: defaultPadding,
        bottom: defaultPadding,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: onPress,
            child: Container(
              padding: const EdgeInsets.all(defaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 10,
                    color: primaryColor.withOpacity(0.5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        color: primaryColor,
                        fontSize: 13,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '$title\n',
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: country,
                          style: TextStyle(
                            color: primaryColor.withOpacity(0.75),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$$price',
                    style: const TextStyle(
                      fontSize: 13,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
