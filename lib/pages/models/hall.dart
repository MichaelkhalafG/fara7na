class Hall {
  int _hallId = 0;
  int _capacityRange = 0;
  double _price = 0;
  double _duration = 0;
  double _rate = 0;
  String _details = '';
  String _name = '';
  String _image = '';
  String _location = '';

  /// Assign data to WeddingHall object
  Hall(List hallData) {
    _duration = hallData[0];
    _image = hallData[1];
    _rate = hallData[2];
    _price = hallData[3];
    _name = hallData[4];
    _details = hallData[5];
    _location = hallData[6];
    _hallId = hallData[7];
    _capacityRange = hallData[8];
  }

  /// Return hall's data.
  ///
  /// returnHallData('name') == hall name.
  /// returnHallData() == List of all attributes value.
  returnHallData([String? fieldName]) {
    switch (fieldName) {
      case null:
        {
          return [
            _hallId,
            _capacityRange,
            _price,
            _duration,
            _rate,
            _details,
            _name,
            _image,
            _location
          ];
        }
        break;
      case 'id':
        {
          return _hallId;
        }
        break;
      case 'capacity':
        {
          return _capacityRange;
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
      case 'details':
        {
          return _details;
        }
        break;
      case 'rate':
        {
          return _rate;
        }
        break;
      case 'name':
        {
          return _name;
        }
        break;
      case 'image':
        {
          return _image;
        }
        break;
      case 'location':
        {
          return _location;
        }
        break;
    }
  }

  /// To change hall data after assigned.
  ///
  /// Accepts Map datatype with changed fields as a keys.
  void update_hall_info(Map newData) {
    newData.forEach((key, value) {
      if (key == "capacity") {
        _capacityRange = value;
      }
      if (key == "price") {
        _price = value;
      }
      if (key == "duration") {
        _duration = value;
      }
      if (key == "rate") {
        _rate = value;
      }
      if (key == "details") {
        _details = value;
      }
    });
  }
}
