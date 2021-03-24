
import 'package:flutter/services.dart';
import 'package:flutter_module/common/channel/channel_name.dart';
import 'package:flutter_module/common/eventbus/global_event_bus.dart';

/// common通道

class CommonChannel {
  static const mCommonChannel = MethodChannel(ChannelName.commonChannel);

  static init() {
    // 原生调用Flutter
    // MethodCall.method 原生调用的Flutter方法
    // MethodCall.arguments
    mCommonChannel.setMethodCallHandler(_handleNativeCall);
  }

  static Future<dynamic> _handleNativeCall(MethodCall call) async {
    if (call.method == CommonChannelMethod.FLUTTER_FUNC_OPEN_ALBUM) {
      return openAlbum(call.arguments);
    }
  }

  static Future<List<String>> openAlbum(String arguments) async {
    return List();
  }
}

abstract class CommonChannelMethod {
  // Flutter方法
  static const FLUTTER_FUNC_OPEN_ALBUM = "openAlbum";

  // 原生方法
  static const NATIVE_FUNC_VERSION_CODE = "versionCode";
  static const NATIVE_FUNC_SHOW_TOAST = "showToast";
}