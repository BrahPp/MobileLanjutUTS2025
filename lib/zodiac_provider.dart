import 'package:flutter/material.dart';

class ZodiacProvider with ChangeNotifier {
  String name = '';
  String nim = '';
  DateTime? birthDate;

  void setData(String nameInput, String nimInput, DateTime dateInput) {
    name = nameInput;
    nim = nimInput;
    birthDate = dateInput;
    notifyListeners();
  }

  String getZodiacSign() {
    if (birthDate == null) return "Unknown";

    final day = birthDate!.day;
    final month = birthDate!.month;

    if ((month == 12 && day >= 21) || (month == 1 && day <= 19)) return "Capricorn";
    if ((month == 1 && day >= 20) || (month == 2 && day <= 18)) return "Aquarius";
    if ((month == 2 && day >= 19) || (month == 3 && day <= 20)) return "Pisces";
    if ((month == 3 && day >= 21) || (month == 4 && day <= 20)) return "Aries";
    if ((month == 4 && day >= 21) || (month == 5 && day <= 20)) return "Taurus";
    if ((month == 5 && day >= 21) || (month == 6 && day <= 20)) return "Gemini";
    if ((month == 6 && day >= 21) || (month == 7 && day <= 20)) return "Cancer";
    if ((month == 7 && day >= 21) || (month == 8 && day <= 21)) return "Leo";
    if ((month == 8 && day >= 22) || (month == 9 && day <= 22)) return "Virgo";
    if ((month == 9 && day >= 23) || (month == 10 && day <= 22)) return "Libra";
    if ((month == 10 && day >= 23) || (month == 11 && day <= 22)) return "Scorpio";
    if ((month == 11 && day >= 23) || (month == 12 && day <= 20)) return "Sagitarius";

    return "Unknown";
  }

  String getZodiacDescription() {
    String sign = getZodiacSign();
    switch (sign) {
      case "Capricorn":
        return "Orang yang lahir pada tanggal antara 21 Desember sampai 19 Januari berada di bawah pengaruh zodiak Capricorn, yang berlambang kambing. Orang yang berzodiak Capricorn mengutamakan kesuksesan, status, posisi, reputasi, loyalitas, konsentrasi, pemecahan masalah, bertanggung jawab, memperlihatkan kebijaksanaan, dan keseriusan belajar melalui pengalaman. Namun, ada kalanya orang berzodiak Capricorn cenderung bersikap memandang buruk (pesimis), selalu terpaksa, membebani, takut menghadapi hambatan, memperlihatkan batasan, kurang simpati, terlalu khawatir, dan pemikiran sempit. Capricorn termasuk dalam kategori kardinal, yaitu aktif. Dengan kualitas ini Anda dianggap baik untuk memulai setiap proyek baru. Lambang-lambang yang termasuk dalam kategori kardinal selain Capricorn adalah Aries, Cancer dan Libra.";
      case "Aquarius":
        return "Orang yang lahir pada tanggal antara 20 Januari sampai 18 Febuari berada di bawah pengaruh zodiak Aquarius, yang berlambang gelombang (alur air). Orang Aquarius tertarik dengan petualangan, berjiwa kemanusiaan, ingin tahu, ada semangat berontak, bersikap spontan, progesif, persahabatan, hak asasi, kelompok, dan mampu memberi manfaat untuk sekitar. Namun, ada kalanya Aquarius menghadapi gangguan, tak bisa diharapkan, suka membantah, memberontak, tak lengkap, perilaku salah, tak kosisten, perangai radikal, kurang metode, dan mendatangkan bencana. Aquarius termasuk dalam kategori tetap, yaitu termasuk stabilitas, ketabahan, ketahanan, dan kesempurnaan. Dengan kualitas ini Aquarius baik untuk memastikan sesuatu berjalan lancar atau berhasil. Lambang– lambang yang termasuk dalam kategori tetap selain Aquarius adalah Taurus, Leo dan Scorpio.";
      case "Pisces":
        return "Orang yang lahir antara tanggal 19 Febuari sampai 20 Maret dikatakan bernaung di bawah zodiak Pisces, yang berlambang ikan. Pisces mengutamakan cinta universal, bersifat manja, selalu mencari ilham, memperlihatkan kepercayaan, ada kesepahaman, berjiwa puitis, menyukai musik, beragama, bersifat setia, mampu menghibur diri, mengutamakan kerohanian, dan tidak mudah mengaku kalah. Namun, ada kalanya Pisces merasa bingung, bersalah, mudah mengaku kalah, mudah kecewa, khawatir, risau, terlibat dalam penipuan, ketagihan, dan mudah menurut kemauan hati. Pisces termasuk dalam kategori variabel, yaitu mudah mengalami daya perubahan, daya adaptasi dan daya keseimbangan. Dengan kategori variabel ini, Pisces adalah kreatif meskipun tidak selalu praktis. Lambang-lambang yang termasuk dalam kategori fleksibel selain Pisces adalah Gemini, Virgo dan Sagitarius.";
      case "Aries":
        return "Orang yang lahir pada tanggal antara 21 Maret sampai 20 April dikatakan bernaung di bawah zodiak Aries, yang berlambang Biri-biri jantan. Dengan demikian, Aries seorang yang berani, yakin, inisiatif, mengutamakan tindakan, ada pertahanan diri, ada rasa merintis, ada daya juang, dan pencinta/ memperjuangkan nasib. Namun, ada kalanya Aries ini terlalu pemikir, ada kekasaran, kesombongan diri, gemar memicu permusuhan, agresif, hasil kerja tak sempurna, dan ada kelemahan. Aries termasuk dalam kategori kardinal, yaitu aktif. Dengan kualitas ini Aries dianggap baik untuk memulai setiap proyek baru. Lambang-lambang yang termasuk dalam kategori kardinal selain Aries adalah Capricorn, Cancer dan Libra.";
      case "Taurus":
        return "Orang yang lahir pada tanggal antara 21 April sampai 20 Mei dikatakan bernaung di bawah zodiak Taurus, yang berlambang Lembu Jantan. Dengan demikian, Taurus mengutamakan kekayaan, ketinggian spiritual, kaut daya rasa, loyalitas, gemar berpelesiran, kesuburan, terlalu praktis, murah rezeki dan ketabahan. Walau bagaimana pun, ada kalanya Taurus bersikap terlalu kebendaan, terlalu mengekang, keras hati, suka menurut rasa hati dan buntu pikiran. Taurus termasuk dalam kategori tetap, yaitu termasuk stabilitas, daya ketabahan, daya tahan, dan daya kesempurnaan. Dengan kualitas ini Taurus baik untuk mempastikan sesuatu berjalan lancar atau berhasil. Lambang lambang yang termasuk dalam kategori tetap selain Taurus adalah Aquarius, Leo dan Scorpio.";
      case "Gemini":
        return "Orang yang lahir pada tanggal antara 21 Mei sampai 20 Juni dikatakan bernaung di bawah zodiak Gemini, yang berlambang Saudara Kembar. Dengan demikian, Gemini terampil berkomunikasi, suka bepergian, serbaguna, cerdas, ada kekuatan berbicara, mampu menulis, kedekatan pada sanak saudara dan tetangga, gemar migrasi, dan bersikap terbuka. Namun, ada kalanya Gemini bersikap hanya suka sekejap saja, bersikap keanak-anakan, gugup, suka bermuka dua, berbicara kosong, tak lengkap dan suka berpura-pura. Gemini termasuk dalam kategori variabel, yaitu mudah mengalami daya perubahan, daya adaptasi dan daya keseimbangan. Dengan kategori variabel ini, Gemini adalah kreatif meskipun tidak selalu praktis. Lambang-lambang yang termasuk dalam kategori bervariasi selain Gemini adalah Pisces, Virgo dan Sagitarius.";
      case "Cancer":
        return "Orang yang lahir pada tanggal antara 21 Juni sampai 20 Juli dikatakan bernaung di bawah zodiak Cancer, yang berlambang Kepiting. Dengan demikian, Cancer menyukai rumah tangga, keluarga, kesehatan, makanan, ada rasa simpati, memberi perlindungan, agak sensitif, punya kesabaran, kejujuran, dan kecerdasan. Namun, ada kalanya Cancer bersikap kekanak-kanakan, berbolak-balik, berpura-pura, tidak aman, terlalu bertahan dan takut pada perpisahan. Cancer termasuk dalam kategori kardinal, yaitu aktif. Dengan kualitas ini Cancer dianggap baik untuk memulai setiap proyek baru. Lambang-lambang yang termasuk dalam kategori kardinal selain Cancer adalah Aries, Capricorn dan Libra.";
      case "Leo":
        return "Orang yang lahir pada tanggal antara 21 Juli sampai 21 Agustus dikatakan bernaung di bawah zodiak Leo, yang berlambang Singa. Anda mengutamakan rasa cinta, ramah, bersifat pemurah, ada daya kepemimpinan, menonjolkan kemegahan, selalu hidup, menyoroti keagungan, keberanian, kemampuan, dekat dengan anak-anak, berbakat dan suka pada hiburan. Walau bagaimana pun, ada kalanya Leo ini kerap menunjukkan ego, banyak bicara, memperlihatkan sifat kekuasaan, suka pamer, mengejar kemewahan, dan memenuhi komplek rendah diri dan bangga diri. Leo termasuk dalam kategori tetap, yaitu termasuk stabilitas, ketabahan, ketahanan, dan kesempurnaan. Dengan kualitas ini Anda akan baik untuk mempastikan sesuatu berjalan lancar atau berhasil. Lambang lambang yang termasuk dalam kategori tetap selain Anda adalah Taurus, Aquarius dan Scorpio.";
      case "Virgo":
        return "Orang yang lahir pada tanggal antara 22 Agustus hingga 22 September dikatakan bernaung di bawah zodiak Virgo, yang berlambang Seorang Gadis. Dengan demikian, Virgo suka pada kerja, hasil kerja sempurna, punya pahlawan diri, suci, mengutamakan kesehatan, ada kesadaran, memberikan konsentrasi berdisiplin, praktis, siap melayani dan komprehensif. Namun, ada kalanya Virgo merasa khawatir, cerewet, berpandangan sempit, terlalu tertib, suka mengeluh, tidak mudah mengaku kalah, dan ada suka mengkritik. Virgo termasuk dalam kategori variabel, yaitu mudah mengalami daya perubahan, daya adaptasi dan daya keseimbangan. Dengan kategori variabel ini, Virgo adalah zodiak kreatif meskipun tidak selalu praktis. Lambang-lambang yang termasuk dalam kategori bervariasi selain Virgo adalah Gemini, Pisces dan Sagitarius.";
      case "Libra":
        return "Orang yang lahir pada tanggal antara 23 September sampai 22 Oktober dikatakan bernaung di bawah zodiak Libra, yang berlambang Alat Penimbang (Dacin). Dengan demikian, orang yang berzodiak Libra biasanya berciri-ciri harmonis, seimbang, menyukai pernikahan, mendapati perhubungan, mengutamakan kesetaraan, aliansi, diplomasi, berseni, suka membantu, selalu dalam keadaan ceria, dapat menjadi pasangan yang ideal dan menyukai keadilan. Namun, ada kalanya Libra bersikap bolak-balik, pura-pura, tidak jujur, tujuan kurang tegas, atau tindakan kurang seimbang. Libra termasuk dalam kategori kardinal, yaitu aktif (berprinsip memulai sesuatu). Dengan kualitas ini Libra dianggap baik untuk merangsang dan memulai setiap proyek baru. Lambang lambang yang termasuk dalam kategori kardinal selain Libra adalah Aries, Cancer dan Capricorn.";
      case "Scorpio":
        return "Orang yang lahir pada tanggal antara 23 Oktober sam pai 22 November dikatakan bernaung di bawah zodiak Scorpio, yang berlambang kalajengking. Scorpio memiliki kemewahan, kreatif, ada keinginan yang kuat, punya stamina, daya sensual yang tinggi dan ada bakat menyembuhkan. Walau bagaimana pun, ada kalanya Scorpio mudah menaruh rasa cemburu, suka menuntut bela, suka 'membinasakan dir , ekstrim, fanatik, tamak dan berdaya untuk menyerang. Scorpio termasuk dalam kategori tetap, yaitu termasuk stabilitas, ketabahan, ketahanan, dan kesempurnaan. Dengan kualitas ini Scorpio akan baik untuk memastikan sesuatu berjalan lancar atau berhasil. Lambang lambang yang termasuk dalam kategori tetap selain Scorpio adalah Taurus, Leo dan Aquarius.";
      case "Sagitarius":
        return "Orang yang lahir pada tanggal antara 23 November sampai 20 Desember dikatakan bernaung di bawah zodiak Sagitarius, yang berlambang Pemanah. Sagitarius suka minat belajar, bersikap optimis, pemanjat, pemahaman diri, bercita-cita tinggi, memiliki hati nurani, berpegang pada agama, psikologi, suka pada kesenangan, bijaksana, selalu ada keberuntungan, gemar eksplorasi dan ada berbagai impian. Namun, ada kalanya Sagitarius berada dalam kelalaian, tidak mematuhi hukum, berada dalam kegelisahan, pembazir, terlalu menurut kehendak hati, tidak jujur dan tidak bertanggung jawab. Sagitarius termasuk dalam kategori variabel, yaitu mudah mengalami daya perubahan, daya adaptasi dan daya keseimbangan. Dengan kategori variabel ini, Sagitarius adalah kreatif meskipun tidak selalu praktis. Lambang-lambang yang termasuk dalam kategori bervariasi selain Sagitarius adalah Gemini, Virgo dan Pisces.";
      default:
        return "Zodiak tidak dikenali.";
    }
  }
}
