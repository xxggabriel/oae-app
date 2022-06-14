import 'dart:core';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }
}

extension GlobalKeyExtension on GlobalKey {
  Rect? get globalPaintBounds {
    final renderObject = currentContext?.findRenderObject();
    var translation = renderObject?.getTransformTo(null).getTranslation();
    if (translation != null && renderObject?.paintBounds != null) {
      return renderObject?.paintBounds.shift(Offset(translation.x, translation.y));
    } else {
      return null;
    }
  }

  Offset? get globalOffsetCenter {
    return globalPaintBounds?.center;
  }
}

extension DateFormatExtension on DateTime {
  String? format(String format) {
    try {
      return DateFormat(format, 'pt_br').format(this);
    } catch (e) {}
    return null;
  }
}

extension DateParseExtension on String {
  DateTime? parse(String format) {
    try {
      return DateFormat(format).parse(this);
    } catch (e) {}
    return null;
  }
}

extension Initials on String {
  String get initials {
    if (this.isEmpty) return "       ";
    var parts = this.trim().split(" ");
    parts.removeWhere((element) => element.length <= 4 && element.contains(RegExp(r'dr', caseSensitive: false)));

    if (parts.length <= 0) return "";
    var initials = "${parts[0].characters.first}";
    if (parts.length > 1) initials += "${parts[parts.length - 1].characters.first}";
    return initials;
  }
}

extension CapExtension on String {
  String get capitalize {
    var lower = this.toLowerCase().trim();
    if (lower.isEmpty) return this;
    return '${lower[0].toUpperCase()}${lower.substring(1)}';
  }

  String get capitalizeFirstofEach => this.trim().split(" ").map((str) => str.capitalize).join(" ");
}

extension NameExtension on String {
  String get firstName {
    var parts = this.trim().split(" ");
    return parts.length > 1 ? parts.first : this;
  }

  String get lastName {
    var parts = this.trim().split(" ");
    return parts.length > 1 ? parts.last : this;
  }
}

extension WeekExtension on DateTime {
  int get weekday2 {
    switch (this.weekday) {
      case DateTime.sunday:
        return 1;
      case DateTime.monday:
        return 2;
      case DateTime.tuesday:
        return 3;
      case DateTime.wednesday:
        return 4;
      case DateTime.thursday:
        return 5;
      case DateTime.friday:
        return 6;
      case DateTime.saturday:
        return 7;
    }
    return -1;
  }
}
