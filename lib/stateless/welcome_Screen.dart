import 'package:flutter/material.dart';

class welcomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image(
              image: AssetImage(
                'assets/images/Group 227@2x.png',
              ),
              fit: BoxFit.cover,
            ),

          ),
          GestureDetector(
            onTap: (){},   // To be implemented
          ),
          Positioned(
              child: Container(
                padding: EdgeInsets.only(
                  top:MediaQuery.of(context).size.height * (173/812),
                  left: MediaQuery.of(context).size.width * (33/375),

                ),
                width: MediaQuery.of(context).size.width * (309/375),

                child: Image(
                  image: AssetImage(
                    'assets/images/Artboard 1@3x.png'
                  ),
                ),
              )
          ),

        ],
      ),

    );
  }
}
