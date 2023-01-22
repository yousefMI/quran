import 'package:flutter/material.dart';


class ItemHomeScreen extends StatelessWidget {
  ItemHomeScreen({
    Key? key,
    required this.title,
    required this.description,
    required this.numofayat,
    required this.surahnum,
     required this.sura,
  }) : super(key: key);
 String? title, description,sura;
 int? numofayat, surahnum;
  //Surahs sura;


  @override

  Widget build(BuildContext context) {
    return  Column(crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${title.toString()}",style: TextStyle(fontSize: 15,color: Colors.black45),),
            SizedBox(width: 10,),
            Text(":اسم السورة",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),


          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${description.toString()} ",style: TextStyle(color: Colors.black45),),
            SizedBox(width: 10,),
            Text(": مكان النزول ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
          ],
        ),

       Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(" ${surahnum.toString()}",style: TextStyle(color: Colors.black45),),
            SizedBox(width: 10),
            Text(": رقم السورة فى القران",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),


          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${numofayat.toString()}",style: TextStyle(color: Colors.black45),),
            SizedBox(width: 10),
            Text(": عدد ايات السورة",style: TextStyle(fontWeight: FontWeight.bold,),),
         ],
       ),
        Text(sura!,textAlign: TextAlign.center,),
      SizedBox(height: 20),
      ],
    );
  }
}
