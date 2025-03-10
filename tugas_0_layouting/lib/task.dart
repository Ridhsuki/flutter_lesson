import 'package:flutter/material.dart';

class MyTask extends StatelessWidget {
  const MyTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network(
              'https://direktori.lldikti4.id/uploads/logo_pt/045061.png',
              width: 202,
              height: 208,
            ),
            Text('Selamat Datang di Politeknik IDN Bogor',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center),
            Text(
              'Aplikasi resmi Politeknik IDN Bogor hadir untuk mempermudah akses informasi akademik, kegiatan kampus, dan layanan mahasiswa. ',
              style: TextStyle(),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(),
                  child: Text('Register'),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(),
                    child: Text('Login'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
