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
      _Forename = await secureStorage.getString('ff_Forename') ?? _Forename;
    });
    await _safeInitAsync(() async {
      _clientId = await secureStorage.getString('ff_clientId') ?? _clientId;
    });
    await _safeInitAsync(() async {
      _profiletoken =
          await secureStorage.getString('ff_profiletoken') ?? _profiletoken;
    });
    await _safeInitAsync(() async {
      _Quote = await secureStorage.getString('ff_Quote') ?? _Quote;
    });
    await _safeInitAsync(() async {
      _Currentuser =
          await secureStorage.getString('ff_Currentuser') ?? _Currentuser;
    });
    await _safeInitAsync(() async {
      _avatarBase64 =
          await secureStorage.getString('ff_avatarBase64') ?? _avatarBase64;
    });
    await _safeInitAsync(() async {
      _refreshtoken =
          await secureStorage.getString('ff_refreshtoken') ?? _refreshtoken;
    });
    await _safeInitAsync(() async {
      _TodaySleepMinutes =
          await secureStorage.getDouble('ff_TodaySleepMinutes') ??
              _TodaySleepMinutes;
    });
    await _safeInitAsync(() async {
      _todayFloors =
          await secureStorage.getDouble('ff_todayFloors') ?? _todayFloors;
    });
    await _safeInitAsync(() async {
      _stepsStats7d = (await secureStorage.getStringList('ff_stepsStats7d'))
              ?.map(double.parse)
              .toList() ??
          _stepsStats7d;
    });
    await _safeInitAsync(() async {
      _sleepStats7d =
          (await secureStorage.getStringList('ff_sleepStats7d'))?.map((x) {
                try {
                  return jsonDecode(x);
                } catch (e) {
                  print("Can't decode persisted json. Error: $e.");
                  return {};
                }
              }).toList() ??
              _sleepStats7d;
    });
    await _safeInitAsync(() async {
      _goaltitle = await secureStorage.getString('ff_goaltitle') ?? _goaltitle;
    });
    await _safeInitAsync(() async {
      _goaldescription = await secureStorage.getString('ff_goaldescription') ??
          _goaldescription;
    });
    await _safeInitAsync(() async {
      _youtubelink =
          await secureStorage.getString('ff_youtubelink') ?? _youtubelink;
    });
    await _safeInitAsync(() async {
      _checkinpainscore =
          await secureStorage.getDouble('ff_checkinpainscore') ??
              _checkinpainscore;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _Forename = '';
  String get Forename => _Forename;
  set Forename(String value) {
    _Forename = value;
    secureStorage.setString('ff_Forename', value);
  }

  void deleteForename() {
    secureStorage.delete(key: 'ff_Forename');
  }

  String _clientId = '';
  String get clientId => _clientId;
  set clientId(String value) {
    _clientId = value;
    secureStorage.setString('ff_clientId', value);
  }

  void deleteClientId() {
    secureStorage.delete(key: 'ff_clientId');
  }

  String _profiletoken = '';
  String get profiletoken => _profiletoken;
  set profiletoken(String value) {
    _profiletoken = value;
    secureStorage.setString('ff_profiletoken', value);
  }

  void deleteProfiletoken() {
    secureStorage.delete(key: 'ff_profiletoken');
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

  String _refreshtoken = '';
  String get refreshtoken => _refreshtoken;
  set refreshtoken(String value) {
    _refreshtoken = value;
    secureStorage.setString('ff_refreshtoken', value);
  }

  void deleteRefreshtoken() {
    secureStorage.delete(key: 'ff_refreshtoken');
  }

  double _todaySteps = 0.0;
  double get todaySteps => _todaySteps;
  set todaySteps(double value) {
    _todaySteps = value;
  }

  double _TodaySleepMinutes = 0.0;
  double get TodaySleepMinutes => _TodaySleepMinutes;
  set TodaySleepMinutes(double value) {
    _TodaySleepMinutes = value;
    secureStorage.setDouble('ff_TodaySleepMinutes', value);
  }

  void deleteTodaySleepMinutes() {
    secureStorage.delete(key: 'ff_TodaySleepMinutes');
  }

  double _todayFloors = 0.0;
  double get todayFloors => _todayFloors;
  set todayFloors(double value) {
    _todayFloors = value;
    secureStorage.setDouble('ff_todayFloors', value);
  }

  void deleteTodayFloors() {
    secureStorage.delete(key: 'ff_todayFloors');
  }

  List<double> _stepsStats7d = [];
  List<double> get stepsStats7d => _stepsStats7d;
  set stepsStats7d(List<double> value) {
    _stepsStats7d = value;
    secureStorage.setStringList(
        'ff_stepsStats7d', value.map((x) => x.toString()).toList());
  }

  void deleteStepsStats7d() {
    secureStorage.delete(key: 'ff_stepsStats7d');
  }

  void addToStepsStats7d(double value) {
    stepsStats7d.add(value);
    secureStorage.setStringList(
        'ff_stepsStats7d', _stepsStats7d.map((x) => x.toString()).toList());
  }

  void removeFromStepsStats7d(double value) {
    stepsStats7d.remove(value);
    secureStorage.setStringList(
        'ff_stepsStats7d', _stepsStats7d.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromStepsStats7d(int index) {
    stepsStats7d.removeAt(index);
    secureStorage.setStringList(
        'ff_stepsStats7d', _stepsStats7d.map((x) => x.toString()).toList());
  }

  void updateStepsStats7dAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    stepsStats7d[index] = updateFn(_stepsStats7d[index]);
    secureStorage.setStringList(
        'ff_stepsStats7d', _stepsStats7d.map((x) => x.toString()).toList());
  }

  void insertAtIndexInStepsStats7d(int index, double value) {
    stepsStats7d.insert(index, value);
    secureStorage.setStringList(
        'ff_stepsStats7d', _stepsStats7d.map((x) => x.toString()).toList());
  }

  List<dynamic> _sleepStats7d = [];
  List<dynamic> get sleepStats7d => _sleepStats7d;
  set sleepStats7d(List<dynamic> value) {
    _sleepStats7d = value;
    secureStorage.setStringList(
        'ff_sleepStats7d', value.map((x) => jsonEncode(x)).toList());
  }

  void deleteSleepStats7d() {
    secureStorage.delete(key: 'ff_sleepStats7d');
  }

  void addToSleepStats7d(dynamic value) {
    sleepStats7d.add(value);
    secureStorage.setStringList(
        'ff_sleepStats7d', _sleepStats7d.map((x) => jsonEncode(x)).toList());
  }

  void removeFromSleepStats7d(dynamic value) {
    sleepStats7d.remove(value);
    secureStorage.setStringList(
        'ff_sleepStats7d', _sleepStats7d.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromSleepStats7d(int index) {
    sleepStats7d.removeAt(index);
    secureStorage.setStringList(
        'ff_sleepStats7d', _sleepStats7d.map((x) => jsonEncode(x)).toList());
  }

  void updateSleepStats7dAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    sleepStats7d[index] = updateFn(_sleepStats7d[index]);
    secureStorage.setStringList(
        'ff_sleepStats7d', _sleepStats7d.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInSleepStats7d(int index, dynamic value) {
    sleepStats7d.insert(index, value);
    secureStorage.setStringList(
        'ff_sleepStats7d', _sleepStats7d.map((x) => jsonEncode(x)).toList());
  }

  String _goaltitle = 'not provided';
  String get goaltitle => _goaltitle;
  set goaltitle(String value) {
    _goaltitle = value;
    secureStorage.setString('ff_goaltitle', value);
  }

  void deleteGoaltitle() {
    secureStorage.delete(key: 'ff_goaltitle');
  }

  String _goaldescription = 'not provided';
  String get goaldescription => _goaldescription;
  set goaldescription(String value) {
    _goaldescription = value;
    secureStorage.setString('ff_goaldescription', value);
  }

  void deleteGoaldescription() {
    secureStorage.delete(key: 'ff_goaldescription');
  }

  String _youtubelink = '';
  String get youtubelink => _youtubelink;
  set youtubelink(String value) {
    _youtubelink = value;
    secureStorage.setString('ff_youtubelink', value);
  }

  void deleteYoutubelink() {
    secureStorage.delete(key: 'ff_youtubelink');
  }

  double _checkinpainscore = 0.0;
  double get checkinpainscore => _checkinpainscore;
  set checkinpainscore(double value) {
    _checkinpainscore = value;
    secureStorage.setDouble('ff_checkinpainscore', value);
  }

  void deleteCheckinpainscore() {
    secureStorage.delete(key: 'ff_checkinpainscore');
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
