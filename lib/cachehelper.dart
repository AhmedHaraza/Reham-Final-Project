import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class CacheHelper {
  static SharedPreferences? sharedPreferences;
  static SharedPreferences? policysharedPreferences;
  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    policysharedPreferences = await SharedPreferences.getInstance();}
  static dynamic getData({
    @required String? key,
  }) {
    return sharedPreferences!.get(key!);}
  static Future<bool> saveData({
    required String key,
    @required dynamic value,
  }) async {
    if (value is String) return await sharedPreferences!.setString(key, value);
    if (value is int) return await sharedPreferences!.setInt(key, value);
    if (value is bool) return await sharedPreferences!.setBool(key, value);
    return await sharedPreferences!.setDouble(key, value);}
  static List<String> selectedCondId=[];
  static saveList() async {
    return await sharedPreferences!.setStringList('selectedCondId',
        selectedCondId);}
  static dynamic getDataList({
    @required String? key,
  }) {return sharedPreferences!.get(key!);}
  static Future<bool> removeData({
    required String key,
  }) async {
    return await sharedPreferences!.remove(key);}
  static Future<bool> clearAllData() async {
    return await sharedPreferences!.clear();}
}