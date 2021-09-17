import 'package:empmaster/providers/cloudFirestore.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class Providers {
  static List<SingleChildWidget> providers() => [
        ChangeNotifierProvider<CloudFirestoreService>(
          create: (_) => CloudFirestoreService(),
        ),
      ];
}
