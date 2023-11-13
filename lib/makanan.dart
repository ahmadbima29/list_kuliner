class Makanan {
  String nama;
  String deskripsi;
  String gambarUtama;
  String detail;
  String waktuBuka;
  String harga;
  String kalori;
  List<String> gambarLain;
  List<Map<String, String>> bahan;

  Makanan({
    required this.nama,
    required this.deskripsi,
    required this.gambarUtama,
    required this.detail,
    required this.waktuBuka,
    required this.harga,
    required this.kalori,
    required this.gambarLain,
    required this.bahan,
  });

  static List<Makanan> dummyData = [
    Makanan(
        nama: 'Bubur',
        deskripsi: 'Nasi lembek dicampur dengan bumbu gurih dan topping',
        gambarUtama: 'assets/bubur.jpg',
        detail:
            'Bubur merupakan istilah umum untuk mengacu pada campuran beberapa campuran bahan yang dicampur ke nasi yang lembek ',
        waktuBuka: '07.00-10.00',
        harga: '10.000',
        gambarLain: [
          'assets/bubur1.jpg',
          'assets/bubur2.jpg',
          'assets/bubur3.jpg',
        ],
        bahan: [
          {'Daging': 'assets/bahan/daging.png'},
          {'Cabai': 'assets/bahan/cabai.png'},
          {'Bawang': 'assets/bahan/bawang.png'},
          {'Jahe': 'assets/bahan/jahe.png'},
          {'Santan': 'assets/bahan/santan.png'},
        ],
        kalori: '3372 kkal'),
    Makanan(
        nama: 'Soto',
        deskripsi: 'Makanan berkuah',
        gambarUtama: 'assets/soto.jpg',
        detail:
            'Soto (juga dikenal dengan beberapa nama lokal seperti, sroto, sauto, tauto, atau coto) adalah makanan khas indonesia seperti sop yang terbuat dari kaldu daging dan sayuran',
        waktuBuka: '09.00-12.00',
        harga: 'Rp 6.000',
        gambarLain: [
          'assets/soto1.jpg',
          'assets/soto2.jpg',
          'assets/soto3.jpg',
        ],
        bahan: [
          {'Ayam': 'assets/bahan/ayam.png'},
          {'Cabai': 'assets/bahan/cabai.png'},
          {'Bawang': 'assets/bahan/bawang.png'},
          {'Kacang': 'assets/bahan/kacang.png'},
          {'kecap': 'assets/bahan/kecap.png'},
        ],
        kalori: '400 kkal'),
    Makanan(
        nama: 'pecel',
        deskripsi: 'Sayuran dengan bumbu kacang',
        gambarUtama: 'assets/pecel.jpg',
        detail:
            'Pecel adalah makanan yang terdiri dari berbagai sayur yang direbus dengan bumbu kacang yang disatukan dan alas makan yang dihidangkan berbeda beda sesuai kota asal pecel',
        waktuBuka: '08.00-16.00',
        harga: 'Rp 8.000',
        gambarLain: [
          'assets/pecel1.jpg',
          'assets/pecel2.jpg',
          'assets/pecel3.jpg',
        ],
        bahan: [
          {'Sayur': 'assets/bahan/sayur.png'},
          {'Tahu': 'assets/bahan/tahu.png'},
          {'kentang': 'assets/bahan/kentang.png'},
          {'Kepayang': 'assets/bahan/kepayang.png'},
          {'Kacang': 'assets/bahan/kacang.png'},
        ],
        kalori: '426 kkal'),
  ];
}
