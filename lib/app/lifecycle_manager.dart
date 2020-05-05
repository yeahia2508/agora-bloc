import 'package:flutter/material.dart';

class LifeCycleManager extends StatefulWidget {

  const LifeCycleManager({Key key, this.child}) : super(key: key);
  final Widget child;

  @override
  _LifeCycleManagerState createState() => _LifeCycleManagerState();
}

class _LifeCycleManagerState extends State<LifeCycleManager>
    with WidgetsBindingObserver {
//  List<StoppableService> services = [
//    locator<LocationService>(),
//  ];

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print('state = $state');

//    services.forEach((service) {
//      if (state == AppLifecycleState.resumed) {
//        service.start();
//      } else {
//        service.stop();
//      }
//    });

    if (state == AppLifecycleState.detached) {}
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.child,
    );
  }
}
