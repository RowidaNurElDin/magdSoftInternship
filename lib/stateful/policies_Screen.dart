import 'package:flutter/material.dart';
import 'package:seyana_tech/color.dart';
import 'package:seyana_tech/reusableItems.dart';

class policies extends StatefulWidget {

  @override
  _policiesState createState() => _policiesState();
}

class _policiesState extends State<policies> {
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
            'الشروط و القوانين',
            textDirection: TextDirection.rtl,
            style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: 'CareemBold',
                fontWeight: FontWeight.bold

            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 168 / 375,
                height: MediaQuery.of(context).size.height * 168 / 812,
                child: Image(
                  image: AssetImage('assets/images/Artboard 1@3x.png'),
                ),
              ),
              textWidget('هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.',),
              textWidget('هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.'),

              SizedBox(height: 40.0,),
              reusedButton('موافق', (){})


            ],
          ),
        ),
    );
  }
}

