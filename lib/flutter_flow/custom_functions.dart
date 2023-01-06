import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

double getNegative(double? price) {
  if (price == null) {
    return 0;
  }
  return price * -1;
}

double getMPGain(double? price) {
  if (price == null) {
    return 0;
  }
  return price * 0.05;
}

double getMPGainHSBC(double? price) {
  if (price == null) {
    return 0;
  }
  return price * 0.032;
}

double getMPBigpay(double? price) {
  if (price == null) {
    return 0;
  }
  return price * 0.95;
}

double getMPHSBC(double? price) {
  if (price == null) {
    return 0;
  }
  return price * 0.968;
}

double getMP(
  double? price,
  double twdmyr,
) {
  if (price == null) {
    return 0;
  }
  return price * twdmyr;
}

int getPrice(double? price) {
  if (price == null) {
    return 0;
  }
  double ret = price * 100;
  return ret.toInt();
}
