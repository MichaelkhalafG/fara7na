abstract class Product {
  int _productId = 0;
  String _name = '';
  String _description = '';
  String _ownerPhone = '';
  String _images = '';
  double _price = 0.0;
  double _rate = 0.0;
  double _duration = 0.0;
  bool _availability = true;

  Product(List productData) {
    _productId = productData[0];
    _name = productData[1];
    _description = productData[2];
    _ownerPhone = productData[3];
    _images = productData[4];
    _price = productData[5];
    _rate = productData[6];
    _duration = productData[7];
    _availability = productData[8];
  }

  returnProductData([String? fieldName]) {
    switch (fieldName) {
      case null:
        {
          return [
            _productId,
            _name,
            _description,
            _ownerPhone,
            _images,
            _price,
            _rate,
            _name,
            _availability
          ];
        }
        break;
      case 'id':
        {
          return _productId;
        }
        break;
      case 'name':
        {
          return _name;
        }
        break;
      case 'price':
        {
          return _price;
        }
        break;
      case 'duration':
        {
          return _duration;
        }
        break;
      case 'description':
        {
          return _description;
        }
        break;
      case 'rate':
        {
          return _rate;
        }
        break;
      case 'phone':
        {
          return _ownerPhone;
        }
        break;
      case 'images':
        {
          return _images;
        }
        break;
      case 'availability':
        {
          return _availability;
        }
        break;
    }
  }
}
