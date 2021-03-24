import 'package:event_bus/event_bus.dart';

/// 事件总线
/// 单例模式
class GlobalEventBus {
  EventBus eventBus;

  factory GlobalEventBus() => _getInstance();

  static GlobalEventBus _instance;

  GlobalEventBus._internal() {
    eventBus = EventBus();
  }

  static GlobalEventBus _getInstance() {
    if (_instance == null) {
      _instance = GlobalEventBus._internal();
    }
    return _instance;
  }
}