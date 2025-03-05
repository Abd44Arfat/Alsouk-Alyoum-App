
class BottomNavigationBarEntity {
  final String activeImage, inActiveImage;
  final String name;

  BottomNavigationBarEntity(
      {required this.activeImage,
      required this.inActiveImage,
      required this.name});
}

List<BottomNavigationBarEntity> get bottomNavigationBarItems => [
      BottomNavigationBarEntity(
          activeImage: 'assets/images/home.svg',
          inActiveImage: 'assets/images/home.svg',
          name: 'الرئيسية'),
      BottomNavigationBarEntity(
          activeImage: 'assets/images/home.svg',
          inActiveImage:'assets/images/home.svg',
          name: 'المنتجات'),
      BottomNavigationBarEntity(
          activeImage: 'assets/images/home.svg',
          inActiveImage:'assets/images/home.svg',
          name: 'سلة التسوق'),
      BottomNavigationBarEntity(
          activeImage:'assets/images/home.svg',
          inActiveImage: 'assets/images/home.svg',
          name: 'حسابي'),
    ];