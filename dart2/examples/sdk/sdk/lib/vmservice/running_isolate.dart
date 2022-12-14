// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dart._vmservice;

class RunningIsolate implements MessageRouter {
  final int portId;
  final SendPort sendPort;
  final String name;
  final pendingMessagesReceivePorts = <RawReceivePort>[];

  RunningIsolate(this.portId, this.sendPort, this.name);

  void onIsolateExit() {
    pendingMessagesReceivePorts.forEach((port) {
      port.close();
    });
  }

  String get serviceId => 'isolates/$portId';

  @override
  Future<Response> routeRequest(VMService service, Message message) {
    // Send message to isolate.
    return message.sendToIsolate(pendingMessagesReceivePorts, sendPort);
  }

  @override
  void routeResponse(Message message) {}
}
