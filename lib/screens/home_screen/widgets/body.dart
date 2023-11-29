import 'package:flutter/material.dart';
import 'package:plant_app/screens/home_screen/widgets/header_and_search.dart';
import 'package:plant_app/screens/home_screen/widgets/recomment_item.dart';
import 'package:plant_app/screens/home_screen/widgets/title_with_morebtn.dart';
import 'package:plant_app/screens/plant_screen/plant_screen.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const headerAndsearch(
            title: "Hi Uishopy",
            logoPath: 'assets/images/logo.png',
          ),
          titlewithmorebtn(
            title: 'Recommended',
            onPress: () {},
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                RecommendPlant(
                  image: "assets/images/image_1.png",
                  title: "Samantha",
                  country: "Russia",
                  price: 440,
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PlantScreen(),
                      ),
                    );
                  },
                ),
                RecommendPlant(
                  image: "assets/images/image_2.png",
                  title: "Samantha",
                  country: "Russia",
                  price: 440,
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PlantScreen(),
                      ),
                    );
                  },
                ),
                RecommendPlant(
                  image: "assets/images/image_3.png",
                  title: "Samantha",
                  country: "Russia",
                  price: 440,
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PlantScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          titlewithmorebtn(
            title: "Featured Plants",
            onPress: () {},
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                RecommendPlant(
                  image: "assets/images/image_2.png",
                  title: "Samantha",
                  country: "Russia",
                  price: 440,
                  onPress: () {},
                ),
                RecommendPlant(
                  image: "assets/images/image_1.png",
                  title: "Samantha",
                  country: "Russia",
                  price: 440,
                  onPress: () {},
                ),
                RecommendPlant(
                  image: "assets/images/image_3.png",
                  title: "Samantha",
                  country: "Russia",
                  price: 440,
                  onPress: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
