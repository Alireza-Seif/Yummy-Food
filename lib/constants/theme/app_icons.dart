import 'package:flutter/foundation.dart' show immutable;

@immutable
class AppIcons{
  static const _path= 'assets/icons';

  //auth icons
  static const google = '$_path/Google.svg';
  static const apple = '$_path/Apple.svg';
  static const face_book = '$_path/Facebook.svg';

  //Drawer
  static const wallet = '$_path/wallet.svg';
  static const location = '$_path/location.svg';
  static const discount_shape = '$_path/discount_shape.svg';
  

  const AppIcons._();
}