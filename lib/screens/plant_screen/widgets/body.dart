import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/plant_screen/widgets/icon_image.dart';
import 'package:plant_app/screens/plant_screen/widgets/title_price.dart';

class Body extends StatelessWidget {
  const Body({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          const IconAndImage(imagePath: 'assets/images/img.png'),
          const TitleAndPrice(
            title: "Angelica",
            country: "Russia",
            price: 400,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 65,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(24),
                        ),
                      )),
                  child: const Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: size.width / 2,
                height: 65,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      // backgroundColor: primaryColor,
                      shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                    ),
                  )),
                  child: const Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
