import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/foundation.dart';
import '../../services/dependencies/di.dart';
import '../../services/logger_service.dart';
import '../../services/shared_preferences_service.dart';
import '../errors/failure.dart';

part 'dio.dart';
part 'api_call.dart';
