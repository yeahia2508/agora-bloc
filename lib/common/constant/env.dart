import 'package:meta/meta.dart';
class Env {
  Env({@required this.agoraAppId, @required this.debug});

  final String agoraAppId;
  final bool debug;
}

mixin EnvValue {
  static final Env staging = Env(
      agoraAppId: 'b8e3743610584799bd0d34b8b9e917ee',
      debug: true);
  static final Env production = Env(
      agoraAppId: 'b8e3743610584799bd0d34b8b9e917ee',
      debug: true);
}
