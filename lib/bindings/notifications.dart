/// Notifications API Standard
///
/// https://notifications.spec.whatwg.org/

// ignore_for_file: unused_import

@JS('self')
@staticInterop
library notifications;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:js_bindings/js_bindings.dart';

///
///  Note: This feature is available in Web Workers
///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Notifications API is used to configure and
/// display desktop notifications to the user.
///  These notifications' appearance and specific functionality vary
/// across platforms but generally they provide a way to
/// asynchronously provide information to the user.
///
///
///
///    EventTarget
///
///
///
///
///
///    Notification
///
///
@JS()
@staticInterop
class Notification implements EventTarget {
  external factory Notification._(String title, [NotificationOptions? options]);

  factory Notification(String title, [NotificationOptions? options]) =>
      Notification._(title, options ?? undefined);
  external static Future<NotificationPermission> requestPermission(
      [NotificationPermissionCallback? deprecatedCallback]);

  external static NotificationPermission get permission;

  external static int get maxActions;
}

extension PropsNotification on Notification {
  EventHandlerNonNull? get onclick => js_util.getProperty(this, 'onclick');
  set onclick(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onclick', newValue);
  }

  EventHandlerNonNull? get onshow => js_util.getProperty(this, 'onshow');
  set onshow(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onshow', newValue);
  }

  EventHandlerNonNull? get onerror => js_util.getProperty(this, 'onerror');
  set onerror(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onerror', newValue);
  }

  EventHandlerNonNull? get onclose => js_util.getProperty(this, 'onclose');
  set onclose(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onclose', newValue);
  }

  String get title => js_util.getProperty(this, 'title');
  NotificationDirection get dir =>
      NotificationDirection.fromValue(js_util.getProperty(this, 'dir'));
  String get lang => js_util.getProperty(this, 'lang');
  String get body => js_util.getProperty(this, 'body');
  String get tag => js_util.getProperty(this, 'tag');
  String get image => js_util.getProperty(this, 'image');
  String get icon => js_util.getProperty(this, 'icon');
  String get badge => js_util.getProperty(this, 'badge');
  Iterable<int> get vibrate => js_util.getProperty(this, 'vibrate');
  int get timestamp => js_util.getProperty(this, 'timestamp');
  bool get renotify => js_util.getProperty(this, 'renotify');
  bool get silent => js_util.getProperty(this, 'silent');
  bool get requireInteraction =>
      js_util.getProperty(this, 'requireInteraction');
  dynamic get data => js_util.getProperty(this, 'data');
  Iterable<NotificationAction> get actions =>
      js_util.getProperty(this, 'actions');
  void close() => js_util.callMethod(this, 'close', []);
}

@anonymous
@JS()
@staticInterop
class NotificationOptions {
  external factory NotificationOptions._(
      {String? dir,
      String? lang,
      String? body,
      String? tag,
      String? image,
      String? icon,
      String? badge,
      dynamic vibrate,
      int? timestamp,
      bool? renotify,
      bool? silent,
      bool? requireInteraction,
      dynamic data,
      Iterable<NotificationAction>? actions});

  factory NotificationOptions(
          {NotificationDirection? dir,
          String? lang,
          String? body,
          String? tag,
          String? image,
          String? icon,
          String? badge,
          dynamic vibrate,
          int? timestamp,
          bool? renotify,
          bool? silent,
          bool? requireInteraction,
          dynamic data,
          Iterable<NotificationAction>? actions}) =>
      NotificationOptions._(
          dir: dir?.value ?? NotificationDirection.auto.value,
          lang: lang ?? '',
          body: body ?? '',
          tag: tag ?? '',
          image: image ?? undefined,
          icon: icon ?? undefined,
          badge: badge ?? undefined,
          vibrate: vibrate ?? undefined,
          timestamp: timestamp ?? undefined,
          renotify: renotify ?? false,
          silent: silent ?? false,
          requireInteraction: requireInteraction ?? false,
          data: data ?? undefined,
          actions: actions ?? const []);
}

extension PropsNotificationOptions on NotificationOptions {
  NotificationDirection get dir =>
      NotificationDirection.fromValue(js_util.getProperty(this, 'dir'));
  set dir(NotificationDirection newValue) {
    js_util.setProperty(this, 'dir', newValue.value);
  }

  String get lang => js_util.getProperty(this, 'lang');
  set lang(String newValue) {
    js_util.setProperty(this, 'lang', newValue);
  }

  String get body => js_util.getProperty(this, 'body');
  set body(String newValue) {
    js_util.setProperty(this, 'body', newValue);
  }

  String get tag => js_util.getProperty(this, 'tag');
  set tag(String newValue) {
    js_util.setProperty(this, 'tag', newValue);
  }

  String get image => js_util.getProperty(this, 'image');
  set image(String newValue) {
    js_util.setProperty(this, 'image', newValue);
  }

  String get icon => js_util.getProperty(this, 'icon');
  set icon(String newValue) {
    js_util.setProperty(this, 'icon', newValue);
  }

  String get badge => js_util.getProperty(this, 'badge');
  set badge(String newValue) {
    js_util.setProperty(this, 'badge', newValue);
  }

  dynamic get vibrate => js_util.getProperty(this, 'vibrate');
  set vibrate(dynamic newValue) {
    js_util.setProperty(this, 'vibrate', newValue);
  }

  int get timestamp => js_util.getProperty(this, 'timestamp');
  set timestamp(int newValue) {
    js_util.setProperty(this, 'timestamp', newValue);
  }

  bool get renotify => js_util.getProperty(this, 'renotify');
  set renotify(bool newValue) {
    js_util.setProperty(this, 'renotify', newValue);
  }

  bool get silent => js_util.getProperty(this, 'silent');
  set silent(bool newValue) {
    js_util.setProperty(this, 'silent', newValue);
  }

  bool get requireInteraction =>
      js_util.getProperty(this, 'requireInteraction');
  set requireInteraction(bool newValue) {
    js_util.setProperty(this, 'requireInteraction', newValue);
  }

  dynamic get data => js_util.getProperty(this, 'data');
  set data(dynamic newValue) {
    js_util.setProperty(this, 'data', newValue);
  }

  Iterable<NotificationAction> get actions =>
      js_util.getProperty(this, 'actions');
  set actions(Iterable<NotificationAction> newValue) {
    js_util.setProperty(this, 'actions', newValue);
  }
}

enum NotificationPermission {
  valueDefault('default'),
  denied('denied'),
  granted('granted');

  final String value;
  static NotificationPermission fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<NotificationPermission> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const NotificationPermission(this.value);
}

enum NotificationDirection {
  auto('auto'),
  ltr('ltr'),
  rtl('rtl');

  final String value;
  static NotificationDirection fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<NotificationDirection> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const NotificationDirection(this.value);
}

@anonymous
@JS()
@staticInterop
class NotificationAction {
  external factory NotificationAction(
      {required String action, required String title, String? icon});
}

extension PropsNotificationAction on NotificationAction {
  String get action => js_util.getProperty(this, 'action');
  set action(String newValue) {
    js_util.setProperty(this, 'action', newValue);
  }

  String get title => js_util.getProperty(this, 'title');
  set title(String newValue) {
    js_util.setProperty(this, 'title', newValue);
  }

  String get icon => js_util.getProperty(this, 'icon');
  set icon(String newValue) {
    js_util.setProperty(this, 'icon', newValue);
  }
}

@anonymous
@JS()
@staticInterop
class GetNotificationOptions {
  external factory GetNotificationOptions._({String? tag});

  factory GetNotificationOptions({String? tag}) =>
      GetNotificationOptions._(tag: tag ?? '');
}

extension PropsGetNotificationOptions on GetNotificationOptions {
  String get tag => js_util.getProperty(this, 'tag');
  set tag(String newValue) {
    js_util.setProperty(this, 'tag', newValue);
  }
}

///  The parameter passed into the [onnotificationclick] handler, the
/// interface represents a notification click event that is
/// dispatched on the [ServiceWorkerGlobalScope] of a
/// [ServiceWorker].
/// This interface inherits from the [ExtendableEvent] interface.
///
///
///
///    Event
///
///
///
///
///
///    ExtendableEvent
///
///
///
///
///
///    NotificationEvent
///
///
@experimental
@JS()
@staticInterop
class NotificationEvent implements ExtendableEvent {
  external factory NotificationEvent(
      String type, NotificationEventInit eventInitDict);
}

extension PropsNotificationEvent on NotificationEvent {
  Notification get notification => js_util.getProperty(this, 'notification');
  String get action => js_util.getProperty(this, 'action');
}

@anonymous
@JS()
@staticInterop
class NotificationEventInit implements ExtendableEventInit {
  external factory NotificationEventInit._(
      {required Notification notification, String? action});

  factory NotificationEventInit(
          {required Notification notification, String? action}) =>
      NotificationEventInit._(notification: notification, action: action ?? '');
}

extension PropsNotificationEventInit on NotificationEventInit {
  Notification get notification => js_util.getProperty(this, 'notification');
  set notification(Notification newValue) {
    js_util.setProperty(this, 'notification', newValue);
  }

  String get action => js_util.getProperty(this, 'action');
  set action(String newValue) {
    js_util.setProperty(this, 'action', newValue);
  }
}
