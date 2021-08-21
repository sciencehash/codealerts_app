import 'package:codealerts_app/app/data/models/notification.dart';

abstract class NotificationService {
  ///
  Future<void> initProvider();

  ///
  Future<Notification?> byId(String id);

  ///
  Future<List<Notification>> all();

  ///
  Future<String> add(Notification notification);

  ///
  Future<void> update(Notification notification);

  ///
  Future<void> removeById(String id);
}
