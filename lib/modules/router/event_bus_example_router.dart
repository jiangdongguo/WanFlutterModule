
import 'package:flutter/cupertino.dart';

/// 事件总线使用示例
class EventBusExampleRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EventBusExampleHome();
  }
}

class EventBusExampleHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EventBusExampleState();
  }

}

class EventBusExampleState extends State<EventBusExampleHome> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}