import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(58);

  final String title;
  CustomAppBar(
    this.title, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Stack(
          children: [
            Align(
              alignment: Alignment(-0.04, 0.5),
            //   child: 
              // Center(
                child: Image.asset(
                  'images/LogoAmarela.png',
                  // height: 64,
                  width: 135,
                  fit: BoxFit.fill,
                ),
              // ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(this.title)
              ),
            ),
          ],
        ),
    );
  }
}

