import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

// ignore: camel_case_types
class headerAndsearch extends StatelessWidget {
  const headerAndsearch({
    super.key,
    required this.title,
    required this.logoPath,
  });
  final String title;
  final String logoPath;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: defaultPadding * 1.5),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              left: defaultPadding,
              right: defaultPadding,
              bottom: defaultPadding * 1.5,
            ),
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const Spacer(),
                Image.asset(logoPath),
                // ClipOval(
                //   child: SizedBox.fromSize(
                //     size: const Size(defaultPadding * 2.5, defaultPadding * 2.5),
                //     child: Image.asset('assets/images/logo.png'),
                //   ),
                // )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 5),
                      blurRadius: 50,
                      color: primaryColor.withOpacity(0.5),
                    )
                  ]),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    size: 30,
                    color: primaryColor.withOpacity(0.5),
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: primaryColor.withOpacity(0.5),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
