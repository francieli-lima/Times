import 'package:flutter/foundation.dart';

enum DataType {
  Week,
  Month,
  Year,
}

extension DataTypeExtension on DataType {
  String get name => describeEnum(this);

  String get displayTitle {
    switch(this) {
      case DataType.Week:
        return 'week';
      case DataType.Month:
        return 'month';
      case DataType.Year:
        return 'year';
    }
  }
}