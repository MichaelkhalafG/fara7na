import 'product.dart';

class Car extends Product{
  String _carPlate ='';
  String _carOwner ='';
  String _model = '';
  String _color = '';
  int _productionDate = 0 ;

  Car(List carData): super(carData){
    // _carPlate = carData[0];
    // _carOwner = carData[1];
    // _model = carData[2];
    // _color = carData[3];
    // _productionDate = carData[4];
    _carPlate = carData[9];
    _carOwner = carData[10];
    _model = carData[11];
    _color = carData[12];
    _productionDate = carData[13];
  }

  @override
  returnProductData([String? fieldName]){
    if (fieldName == 'plate' || fieldName == 'owner' || fieldName == 'model' || fieldName == 'color' || fieldName == 'production date')
    {
      switch (fieldName) {
        case null:
          {
            return super.returnProductData(fieldName) + [_carPlate, _carOwner, _model, _color, _productionDate];
          }
          break;
        case 'carPlate':
          {
            return _carPlate;
          }
          break;
        case 'carOwner':
          {
            return _carOwner;
          }
          break;
        case 'model':
          {
            return _model;
          }
          break;
        case 'color':
          {
            return _color;
          }
          break;
        case 'productionDate':
          {
            return _productionDate;
          }
          break;
      }
    }
    else{
      return super.returnProductData(fieldName);
    }
  }
}
