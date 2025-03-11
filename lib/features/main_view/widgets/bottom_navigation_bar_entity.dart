
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
          activeImage: 'assets/images/ticket.svg',
          inActiveImage:'assets/images/ticket.svg',
          name: 'العملات'),
      BottomNavigationBarEntity(
          activeImage: 'assets/images/layer.svg',
          inActiveImage:'assets/images/layer.svg',
          name: 'الذهب'),
      BottomNavigationBarEntity(
          activeImage:'assets/images/calculator.svg',
          inActiveImage: 'assets/images/calculator.svg',
          name: 'الحاسبه'),
    ];