import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(
            'Günün Falı',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
        body: Fal(),
      ),
    );
  }
}

class Fal extends StatefulWidget {
  @override
  State<Fal> createState() => _FalState();
}

class _FalState extends State<Fal> {
  List<String> yanitlar = [
    'TIKLA FALIN GELSİN',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];

// 1-5 arası aşk ,  6-10 para , tavsiye 11-15
  int i = 0;

  void askYenile() {
    setState(() {
      i = Random().nextInt(5) + 1;
      print(yanitlar[i]);
    });
  }

  void paraYenile() {
    setState(() {
      i = Random().nextInt(5) + 6;
      print(yanitlar[i]);
    });
  }

  void tavsiyeYenile() {
    setState(() {
      i = Random().nextInt(5) + 11;
      print(yanitlar[i]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/falci.png'),
              backgroundColor: Colors.purple,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(0.0), // Köşe yuvarlama miktarı
              ),
              margin: EdgeInsets.fromLTRB(50, 30, 50, 20),
              child: TextButton(
                onPressed: askYenile,
                child: ListTile(
                  leading: Icon(
                    Icons.heart_broken_rounded,
                    color: Colors.red,
                  ),
                  title: Text(
                    "AŞK DURUMU",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(0.0), // Köşe yuvarlama miktarı
              ),
              margin: EdgeInsets.fromLTRB(50, 0, 50, 20),
              child: TextButton(
                onPressed: paraYenile,
                child: ListTile(
                  leading: Icon(
                    Icons.attach_money,
                    color: Colors.green,
                  ),
                  title: Text(
                    "PARA DURUMU",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(0.0), // Köşe yuvarlama miktarı
              ),
              margin: EdgeInsets.fromLTRB(50, 0, 50, 20),
              child: TextButton(
                onPressed: paraYenile,
                child: ListTile(
                  leading: Icon(
                    Icons.live_help_sharp,
                    color: Colors.blue,
                  ),
                  title: Text(
                    "GÜNLÜK TAVSİYE ",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Text(yanitlar[i]),
              margin: const EdgeInsets.fromLTRB(
                  50.0, 1.0, 50.0, 0), // margin kullanarak hatayı düzelt
            ),
          ],
        ),
      ),
    );
  }
}
