import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'RincianFakultas.dart';

class Fakultas extends StatelessWidget {
  const Fakultas({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(padding: EdgeInsets.all(20), shrinkWrap: true, children: [
        InkWell(
          child: Container(
              decoration: BoxDecoration(border: Border.all()),
              padding: EdgeInsets.all(14),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 100,
                          padding: EdgeInsets.all(8),
                          child: Image.network(
                              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg')),
                      Container(
                        child: Text("FPMIPA",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        child: Text(
                            "Fakultas Pendidikan Matematika dan Ilmu Pengetahuan Alam",
                            style: TextStyle(fontSize: 12)),
                      ),
                    ],
                  )),
          onTap: () {
            //gunakan navigator untuk panggil RincianFakultas
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RincianFakultas()),
            );
          },
        ),
        Container(
            decoration: BoxDecoration(border: Border.all()),
            padding: EdgeInsets.all(14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 100,
                    padding: EdgeInsets.all(8),
                    child: Image.network(
                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg')),
                Container(
                  child: Text("FPIPS",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Container(
                  child: Text("Fakultas Pendidikan Ilmu Pengatahuan Sosial",
                      style: TextStyle(fontSize: 12)),
                ),
              ],
            )),
      ]),
    );
  }
}
