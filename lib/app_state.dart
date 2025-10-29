import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _profileToken =
          await secureStorage.getString('ff_profileToken') ?? _profileToken;
    });
    await _safeInitAsync(() async {
      _Quote = await secureStorage.getString('ff_Quote') ?? _Quote;
    });
    await _safeInitAsync(() async {
      _Currentuser =
          await secureStorage.getString('ff_Currentuser') ?? _Currentuser;
    });
    await _safeInitAsync(() async {
      _Forename = await secureStorage.getString('ff_Forename') ?? _Forename;
    });
    await _safeInitAsync(() async {
      _avatarBase64 =
          await secureStorage.getString('ff_avatarBase64') ?? _avatarBase64;
    });
    await _safeInitAsync(() async {
      _refreshToken =
          await secureStorage.getString('ff_refreshToken') ?? _refreshToken;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _profileToken = '';
  String get profileToken => _profileToken;
  set profileToken(String value) {
    _profileToken = value;
    secureStorage.setString('ff_profileToken', value);
  }

  void deleteProfileToken() {
    secureStorage.delete(key: 'ff_profileToken');
  }

  String _Quote = '';
  String get Quote => _Quote;
  set Quote(String value) {
    _Quote = value;
    secureStorage.setString('ff_Quote', value);
  }

  void deleteQuote() {
    secureStorage.delete(key: 'ff_Quote');
  }

  String _Currentuser = '';
  String get Currentuser => _Currentuser;
  set Currentuser(String value) {
    _Currentuser = value;
    secureStorage.setString('ff_Currentuser', value);
  }

  void deleteCurrentuser() {
    secureStorage.delete(key: 'ff_Currentuser');
  }

  String _Forename = '';
  String get Forename => _Forename;
  set Forename(String value) {
    _Forename = value;
    secureStorage.setString('ff_Forename', value);
  }

  void deleteForename() {
    secureStorage.delete(key: 'ff_Forename');
  }

  List<dynamic> _activities = [];
  List<dynamic> get activities => _activities;
  set activities(List<dynamic> value) {
    _activities = value;
  }

  void addToActivities(dynamic value) {
    activities.add(value);
  }

  void removeFromActivities(dynamic value) {
    activities.remove(value);
  }

  void removeAtIndexFromActivities(int index) {
    activities.removeAt(index);
  }

  void updateActivitiesAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    activities[index] = updateFn(_activities[index]);
  }

  void insertAtIndexInActivities(int index, dynamic value) {
    activities.insert(index, value);
  }

  String _accountToken = '';
  String get accountToken => _accountToken;
  set accountToken(String value) {
    _accountToken = value;
  }

  /// account selfie
  String _avatarBase64 = '';
  String get avatarBase64 => _avatarBase64;
  set avatarBase64(String value) {
    _avatarBase64 = value;
    secureStorage.setString('ff_avatarBase64', value);
  }

  void deleteAvatarBase64() {
    secureStorage.delete(key: 'ff_avatarBase64');
  }

  String _AccoountToken = '';
  String get AccoountToken => _AccoountToken;
  set AccoountToken(String value) {
    _AccoountToken = value;
  }

  String _refreshToken = '';
  String get refreshToken => _refreshToken;
  set refreshToken(String value) {
    _refreshToken = value;
    secureStorage.setString('ff_refreshToken', value);
  }

  void deleteRefreshToken() {
    secureStorage.delete(key: 'ff_refreshToken');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
