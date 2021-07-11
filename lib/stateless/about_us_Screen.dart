import 'package:flutter/material.dart';
import 'package:seyana_tech/color.dart';
import 'package:seyana_tech/reusableItems.dart';

class aboutUs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: Icon(
              Icons.arrow_back,
              color: AppColors.arrowOrange,
            size: 30,
          ),

        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true ,
        title: Text(
            'عن التطبيق',
          textDirection: TextDirection.rtl,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontFamily: 'CareemBold',
            fontWeight: FontWeight.bold

          ),
        ),
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * (49/812),
              left: MediaQuery.of(context).size.height * (35/375),
              right: MediaQuery.of(context).size.height * (35/375),
              bottom: 36.8
            ),
            child: Text(
              'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'CareemRegular',
                fontSize: 18,
                height: 1.2
              ),
            ),
          ),
          AboutUsReusableTitle('البريد الالكترونى'),
          AboutUsReusableCard('Appadmin@exmple.com'),
          AboutUsReusableTitle('رقم الجوال'),
          AboutUsReusableCard('+1542154544422')
        ],
      ),
    );
  }
}

