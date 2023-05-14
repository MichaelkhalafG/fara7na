import 'product.dart';

class Screen extends Product {
  String _screenType = '';
  double _priceOfScreenMeter = 0.0;

  /// Assign data to WeddingHall object
  Screen(List hallData) : super(hallData) {
    _screenType = hallData[9];
    _priceOfScreenMeter = hallData[10];
  }

  /// Return hall's data.
  ///
  /// returnHallData('name') == hall name.
  /// returnHallData() == List of all attributes value.
  @override
  returnProductData([String? fieldName]) {
    if (fieldName == 'type' || fieldName == 'price') {
      switch (fieldName) {
        case null:
          {
            return super.returnProductData(fieldName) + [_screenType, _priceOfScreenMeter];
          }
          break;
        case 'type':
          {
            return _screenType;
          }
          break;
        case 'price':
          {
            return _priceOfScreenMeter;
          }
          break;
      }
    } else {
      return super.returnProductData(fieldName);
    }
  }
}
