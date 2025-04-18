import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'zodiac_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ZodiacProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zodiak App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final nameController = TextEditingController();
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Aplikasi Ramal Zodiak')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/developer.jpeg'), // pastikan file ini ada di folder assets
                ),
                SizedBox(height: 10),
                Text('Nama : Muhammad Rifqi Praditya', style: TextStyle(fontSize: 16)),
                Text('NIM : 2310501114', style: TextStyle(fontSize: 16)),
              ],
            ),
            Divider(height: 30, thickness: 1),

            // Input Pengguna
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Nama Anda'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime(2000),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                );
                if (picked != null) {
                  setState(() => selectedDate = picked);
                }
              },
              child: Text('Pilih Tanggal Lahir Anda'),
            ),
            if (selectedDate != null)
              Text("Tanggal: ${selectedDate!.toLocal()}".split(' ')[0]),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (selectedDate != null) {
                  Provider.of<ZodiacProvider>(context, listen: false)
                      .setData(nameController.text, '-', selectedDate!); // NIM pengguna tidak digunakan
                  Navigator.push(context, MaterialPageRoute(builder: (_) => ResultPage()));
                }
              },
              child: Text('Lihat Zodiak'),
            )
          ],
        ),
      ),
    );
  }
}

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ZodiacProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Hasil Ramalan"),
            leading: BackButton(onPressed: () => Navigator.pop(context)),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                Text("Nama: ${provider.name}", style: TextStyle(fontSize: 18)),
                Text("Zodiak: ${provider.getZodiacSign()}", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text(provider.getZodiacDescription(), style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        );
      },
    );
  }
}