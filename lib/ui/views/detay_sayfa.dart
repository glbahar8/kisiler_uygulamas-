import 'package:flutter/material.dart';

import '../../data/entity/kisiler.dart';

class DetaySayfa extends StatefulWidget {
  Kisiler kisi;

  DetaySayfa({required this.kisi});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  var tfkisiAdi = TextEditingController();
  var tfkisiTel = TextEditingController();

  Future<void> guncelle(int kisi_id, String kisi_ad, String kisi_tel) async {
    print(" Kişi Güncelle $kisi_id, - $kisi_ad, - $kisi_tel");
  }

  @override
  void initState() {
    super.initState();
    var kisi = widget.kisi;
    tfkisiAdi.text = kisi!.kisi_ad;
    tfkisiTel.text = kisi.kisi_tel;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detay Sayfa"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 50.0, right: 50.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: tfkisiAdi,
                decoration: const InputDecoration(hintText: "Kişi Adı"),
              ),
              TextField(
                controller: tfkisiTel,
                decoration: const InputDecoration(hintText: "Kişi Tel "),
              ),
              ElevatedButton(
                  onPressed: () {
                    guncelle(
                        widget.kisi!.kisi_id, tfkisiAdi.text, tfkisiTel.text);
                  },
                  child: Text(" GÜNCELLE")),
            ],
          ),
        ),
      ),
    );
  }
}
