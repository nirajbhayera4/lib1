import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class TlocalStorage {
  // Singleton pattern
  static final TlocalStorage _instance = TlocalStorage._internal();

  factory TlocalStorage() {
    return _instance;
  }

  TlocalStorage._internal();

  final GetStorage _storage = GetStorage();

  //Generic method to save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Generic method to read data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  // Method to remove data for a specific key
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Method to clear all data
  Future<void> clearAll() async {
    await _storage.erase();
  }
}
