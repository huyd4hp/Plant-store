import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/plant_screen/widgets/icon_card.dart';

class IconAndImage extends StatelessWidget {
  const IconAndImage({
    super.key,
    required this.imagePath,
  });
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.8,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                const Spacer(),
                const IconCard(
                  iconPath: 'assets/icons/water.jpg',
                ),
                const IconCard(
                  iconPath: 'assets/icons/temp.jpg',
                ),
                const IconCard(
                  iconPath: 'assets/icons/wind.jpg',
                ),
                const IconCard(
                  iconPath: 'assets/icons/sun.jpg',
                ),
              ],
            ),
          ),
          Container(
            height: size.height * 0.8,
            width: size.width * 0.75,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 5),
                  blurRadius: 20,
                  color: primaryColor,
                )
              ],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(36),
                bottomLeft: Radius.circular(36),
              ),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                fit: BoxFit.cover,
                image: AssetImage(imagePath),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
