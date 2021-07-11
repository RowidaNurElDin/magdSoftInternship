import 'package:flutter/material.dart';


class SettingsReusableCard extends StatelessWidget {
  String cardText;
  String imageURL;
  Function onPressed;
  SettingsReusableCard(this.cardText, this.imageURL , this.onPressed);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Container(
        child: Card(
          color: Colors.white,
          elevation: 5.0,
          shadowColor: Color(0xffe8e8e8),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          child: Container(
            width: MediaQuery.of(context).size.width * 346 / 375,
            padding: EdgeInsets.symmetric(vertical: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(

                  child: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Image(
                      width: MediaQuery.of(context).size.width * 23.67 / 375,
                      height: MediaQuery.of(context).size.height * 23.67 / 812,
                      image: AssetImage(
                        imageURL,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 25.0),
                  child: Text(
                    cardText,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.0,
                        fontFamily: 'CareemRegular'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class AboutUsReusableTitle extends StatelessWidget {
  String titleText ;

  AboutUsReusableTitle(this.titleText);
  @override
  Widget build(BuildContext context) {
    return       Container(
      padding: EdgeInsets.only(right: 36.8),
      child: Align(
        alignment: Alignment.topRight,
        child: Text(
          titleText,
          textAlign: TextAlign.right,
          style: TextStyle(
            fontFamily: 'CareemRegular',
            fontSize: 23,
          ),

        ),
      ),
    );
  }
}
class AboutUsReusableCard extends StatelessWidget {

  String cardText ;
  AboutUsReusableCard(this.cardText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Card(
        color: Colors.white,
        elevation: 5.0,
        shadowColor: Color(0xffe8e8e8),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0)
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            cardText,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xFFF4B127),
                fontSize: 22.0,
                fontFamily: 'CareemRegular'
            ),
          ),
        ),

      ),
    );
  }
}
class reused_Textfield extends StatelessWidget {
  String hinttext ;
  reused_Textfield(this.hinttext);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 56/812,
      child: TextField(
          textAlign: TextAlign.center,
          enabled: true,
          decoration: InputDecoration(
              filled: true,
              hintText: hinttext,
              hintStyle: TextStyle(
                  fontFamily: 'CareemRegular',
                  fontSize: 20.0,
                  color: Colors.grey[500]
              ),
              fillColor: Color(0xfffee4bd),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color(0xfffee4bd)
                  ),
                  borderRadius: BorderRadius.circular(3.0)

              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color(0xfffee4bd)
                  ),
                  borderRadius: BorderRadius.circular(10.0)

              )
          )
      ),
    );
  }
}
class reusedButton extends StatelessWidget {
  Function onPressed ;
  String btnText ;
  reusedButton(this.btnText , this.onPressed);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(

      onPressed: onPressed,
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.0)
      ),
      color: Color(0xFFFB9800),
      textColor: Colors.white,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal:112,
            vertical:14
        ),
        child: Text(
          btnText,
          style: TextStyle(
              fontFamily: 'CareemBold',
              fontSize: 21
          ),
        ),
      ),
    );
  }
}
class textWidget extends StatelessWidget {
  String text ;
  textWidget(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 294/375,
      height: MediaQuery.of(context).size.height * 190/812,
      child: Text(
        text ,
        textDirection: TextDirection.rtl,
        style: TextStyle(
            color: Colors.black,
            fontFamily: 'CareemRegular',
            fontSize: 15
        ),
      ),
    );
  }
}



