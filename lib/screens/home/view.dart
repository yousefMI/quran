import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:quran/screens/home/components/item.dart';
import 'package:quran/screens/home/model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Quran")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FutureBuilder(
                future: Dio().get(
                    "http://api.alquran.cloud/v1/quran/quran-uthmani" //model2
                    ),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final model = QuranData.fromJson(snapshot.data!.data);
                    return SizedBox(
                      width: 400,
                      height: 678,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: model.data.surahs.length,
                        itemBuilder: (context, index) {

                          return ItemHomeScreen(
                              sura: model.data.surahs[index].totalText.toString(),

                              numofayat: model.data.surahs[index].ayahs.length,
                              surahnum: model.data.surahs[index].number,
                              title: model.data.surahs[index].name,
                              description:
                                  model.data.surahs[index].revelationType);
                        },
                      ),
                    );
                  } else {
                    return const Center(
                        child: CircularProgressIndicator(
                            color: Color(0xff434343)));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}