import 'package:kelompok_5/core/model/destination.dart';

class Destinations {
  static List<Destination> getAll() {
    return [
      Destination(
        name: 'Gedung Arsip Nasional',
        description:
            'Gedung peninggalan abad ke-18 ini dulunya merupakan rumah Gubernur Jenderal VOC, Reinier de Klerk. Bangunannya bergaya arsitektur kolonial klasik dengan taman luas di sekelilingnya. Kini digunakan sebagai tempat arsip sejarah dan acara budaya.',
        imageUrl: 'assets/images/sejarah1.jpg',
        rating: 4.9,
        latitude: -6.1538096608346065,
        longitude: 106.81669753666918,
      ),
      Destination(
        name: 'Gedung Kesenian Jakarta',
        description:
            'Dibangun tahun 1821 oleh pemerintah kolonial Belanda, gedung ini menjadi pusat pertunjukan seni klasik di masa lalu. Kini, Gedung Kesenian Jakarta tetap aktif digunakan untuk konser, drama, dan pementasan budaya lainnya.',
        imageUrl: 'assets/images/sejarah2.jpg',
        rating: 4.7,
        latitude: -6.167037792855528,
        longitude: 106.83537976550566,
      ),
      Destination(
        name: 'Museum Fatahillah',
        description:
            'Dahulu merupakan balai kota VOC, gedung ini kini difungsikan sebagai Museum Sejarah Jakarta. Terletak di kawasan Kota Tua, bangunannya bergaya arsitektur Eropa abad ke-17 dan menjadi ikon wisata sejarah Jakarta.',
        imageUrl: 'assets/images/sejarah3.jpg',
        rating: 4.0,
        latitude: -6.134214273997569,
        longitude: 106.81173232108114,
      ),
      Destination(
        name: 'Gedung Filateli',
        description:
            'Dibangun oleh Belanda sebagai kantor pos utama. Kini, gedung bergaya klasik ini menjadi lokasi pameran filateli dan kadang digunakan untuk acara seni dan budaya.',
        imageUrl: 'assets/images/sejarah4.jpg',
        rating: 4.2,
        latitude: -6.16696225982424,
        longitude: 106.8337262078331,
      ),
      Destination(
        name: 'Gedung Djakarta Theater',
        description:
            'Bioskop bersejarah di kawasan Thamrin ini pernah menjadi pusat hiburan elite pada masa Orde Baru. Kini direnovasi menjadi bioskop modern dengan tetap mempertahankan sisi historisnya.',
        imageUrl: 'assets/images/sejarah5.jpg',
        rating: 4.3,
        latitude: -6.186627863835387,
        longitude: 106.82427273499907,
      ),
      Destination(
        name: 'Museum Bank Mandiri',
        description:
            'Gedung bergaya art-deco ini dahulu adalah kantor Nederlandsche Handel-Maatschappij. Sekarang menjadi museum yang menyimpan sejarah dunia perbankan dan alat transaksi zaman dahulu.',
        imageUrl: 'assets/images/sejarah6.jpg',
        rating: 4.1,
        latitude: -6.137848312559511,
        longitude: 106.81327555201393,
      ),
      Destination(
        name: 'Taman Ismail Marzuki',
        description:
            'Pusat kesenian dan budaya yang dibuka tahun 1968. TIM menjadi rumah bagi seniman Indonesia, lengkap dengan planetarium, galeri seni, dan gedung pertunjukan.',
        imageUrl: 'assets/images/sejarah7.jpg',
        rating: 4.4,
        latitude: -6.190266631004128,
        longitude: 106.83900873430174,
      ),
      Destination(
        name: 'Gedung Pola',
        description:
            'Terletak di kawasan Menteng, Gedung Pola dibangun pada masa Presiden Soekarno dan awalnya digunakan sebagai pusat perencanaan pembangunan nasional. Arsitekturnya mencerminkan semangat modernisme awal Indonesia pascakemerdekaan. Kini, gedung ini menjadi bagian dari kompleks Taman Proklamasi dan sering digunakan untuk kegiatan kebudayaan.',
        imageUrl: 'assets/images/sejarah8.jpg',
        rating: 4.0,
        latitude: -6.203735341671424,
        longitude: 106.84448226550616,
      ),
    ];
  }

  static List<Destination> getPopular() {
    List<Destination> allDestinations = getAll();
    allDestinations.sort((a, b) => b.rating.compareTo(a.rating));
    if (allDestinations.length > 3) {
      return allDestinations.sublist(0, 3);
    } else if (allDestinations.isNotEmpty) {
      return allDestinations;
    } else {
      return [
        Destination(
          name: 'No Popular Destinations',
          description: 'No popular destinations available at the moment.',
          imageUrl: 'https://example.com/no_image.jpg',
          rating: 0.0,
          latitude: 0.0,
          longitude: 0.0,
        ),
      ];
    }
  }
}
