import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    super.key,
    required this.iconPath,
  });
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.04),
      padding: const EdgeInsets.only(left: defaultPadding),
      child: IconButton(
        onPressed: () {},
        icon: SizedBox.fromSize(
            size: const Size(30, 30), child: Image.asset(iconPath)),
      ),
    );
  }
}
