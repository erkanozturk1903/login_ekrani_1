import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final ekranYuksekligi = ekranBilgisi.size.height;
    final ekranGenisligi = ekranBilgisi.size.width;


    return Scaffold(
      backgroundColor: Colors.deepPurple,
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:  EdgeInsets.only(bottom: ekranYuksekligi/20),
            child: SizedBox(
              width: ekranGenisligi/4,
              child: Image.asset("resimler/logo.png")),
          ),
           Padding(
            padding:  EdgeInsets.all(ekranYuksekligi/25),
            child:  const TextField(
              decoration: InputDecoration(
                hintText: "Kullanıcı Adı",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                )
              ),
            ),
          ),
           Padding(
             padding:  EdgeInsets.all(ekranYuksekligi/25),
             child: const TextField(
               obscureText: true,
              decoration: InputDecoration(
                hintText: "Şifre",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                )
              ),
          ),
           ),
          Padding(
            padding:  EdgeInsets.all(ekranYuksekligi/30),
            child: SizedBox(
              width: ekranGenisligi/1.2,
              height: ekranYuksekligi/12,
              child: ElevatedButton(
                onPressed: (){
                  print("Giriş Yapıldı");
                }, 
                style: ElevatedButton.styleFrom(primary: Colors.pink,textStyle: TextStyle(color: Colors.white,fontSize: ekranGenisligi/25)),
                child: Text("GİRİŞ YAP",style: TextStyle(fontSize: ekranGenisligi/25),),
                ),
            ),
          ),
          SizedBox(
            height: ekranYuksekligi/30
          ),
            Text("Yardım ?")
        ],
      ),
    ));
  }
}
