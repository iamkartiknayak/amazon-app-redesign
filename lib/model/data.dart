import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DataModel {
  final List<List> _bestCollection = [
    [FontAwesomeIcons.mobile, 'Mobiles'],
    [FontAwesomeIcons.shirt, 'Fashion'],
    [FontAwesomeIcons.couch, 'Home'],
    [FontAwesomeIcons.tv, 'Electronics'],
    [FontAwesomeIcons.gamepad, 'Toys'],
    [FontAwesomeIcons.percent, 'Deals'],
    [FontAwesomeIcons.pills, 'Pharmacy'],
    [FontAwesomeIcons.book, 'Books'],
    [FontAwesomeIcons.cartShopping, 'Groceries'],
  ];

  List<List> get bestCollection => _bestCollection;

  final List<List> _popularProducts = [
    [
      'Pixel 6a 5G(128GB, Obsidian)',
      '55,999',
      false,
    ],
    [
      'Microsoft Surface Laptop Go 2-12.4" Touchscreen - Intel Core i5 8GB Memory - 128 SSD - Ice Blue (Latest Model)',
      '50,999',
      false
    ],
    [
      'iPhone 11 (128GB, Black)',
      '67,999',
      false,
    ],
    [
      'M1 Macbook Air (512GB SSD, 8GB RAM)',
      '99,999',
      false,
    ],
    [
      'Samsung S22 Ultra (512GB, 16GB)',
      '99,999',
      false,
    ],
    [
      'LG 27" Ultragear™ OLED QHD Gaming Monitor with 240Hz .03ms GtG & nVIDIA® G-SYNC® Compatible,Black',
      '73,499',
      false
    ],
    [
      'Hp Pavilion (1TB SSD, 16GB RAM)',
      '64,999',
      false,
    ],
  ];

  List<List> get popularProducts => _popularProducts;

  final List<List> _inspiredProducts = [
    ['M1 Macbook Air (512GB SSD, 8GB RAM)', '99,999', false],
    [
      'The Healthy Binge Assorted Baked Chips Snacks for Adults and Kids',
      '228',
      false,
    ],
    [
      'KAPAVER® Hybrid Series Compatible with Samsung Galaxy S22 Ultra',
      '699',
      false,
    ],
    [
      'boAt Matrix Smart Watch with 1.65” AMOLED Display, Always On Mode, Slim Premium Design, Heart Rate & SpO2 Monitoring',
      '3,499',
      false,
    ],
    [
      'JBL Tune 230NC TWS, Active Noise Cancellation Earbuds with Mic, Massive 40 Hrs Playtime with Speed Charge, Adjustable EQ APP, 4Mics for Perfect Calls',
      '5,499',
      false,
    ],
    [
      'American Tourister 32 Ltrs Black Casual Backpack (AMT FIZZ SCH BAG 02 - BLACK)',
      '1,049',
      false,
    ],
    [
      'Reebok Mens Guide Stride Run Lp Shoes',
      '999',
      false,
    ],
  ];

  List<List> get inspiredProducts => _inspiredProducts;

  final List<List> _savedForLater = [
    [
      'YONEX Badminton Racquet Voltric Lite 25i (G4, 77 Gram)',
      '1,841',
      true,
      'Racquet',
    ],
    [
      'Fujifilm Instax Mini 11 Instant Camera (Lilac Purple)',
      '12,841',
      false,
      'Camera',
    ],
    [
      'OnePlus Nord CE 2 Lite 5G(Blue Tide, 6GB RAM, 128 UFS)',
      '18,999',
      true,
      'Smartphone',
    ],
  ];

  List<List> get savedForLater => _savedForLater;

  final List<String> _accountTopbarOptions = [
    'Your Orders',
    'Buy Again',
    'Your Account',
    'Your Wish List'
  ];

  List<String> get accountTopbarOptions => _accountTopbarOptions;

  final List<List> _currentOrders = [
    [
      'YONEX Badminton Racquet Voltric Lite 25i (G4, 77 Gram)',
      '1,841',
      true,
      'SATURDAY',
    ],
    [
      'Fujifilm Instax Mini 11 Instant Camera (Lilac Purple)',
      '12,841',
      false,
      '05 JUN',
    ],
    [
      'OnePlus Nord CE 2 Lite 5G(Blue Tide, 6GB RAM, 128 UFS)',
      '18,999',
      true,
      '08 JUN',
    ],
  ];

  List<List> get currentOrders => _currentOrders;
}
