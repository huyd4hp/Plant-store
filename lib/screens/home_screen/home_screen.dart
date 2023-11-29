import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home_screen/widgets/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
      ),
      body: const Body(),
      bottomNavigationBar: SizedBox(
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: SizedBox.fromSize(
                size: const Size(25, 25),
                child: Image.asset('assets/icons/flower-icon.jpg'),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox.fromSize(
                size: const Size(25, 25),
                child: Image.asset('assets/icons/heart-icon.jpg'),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox.fromSize(
                size: const Size(25, 25),
                child: Image.asset('assets/icons/user-icon.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
