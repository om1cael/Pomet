import 'package:go_router/go_router.dart';
import 'package:pomet/ui/setup/view/setup_view.dart';
import 'package:pomet/ui/setup/view_model/setup_view_model.dart';

class Routes {
  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (_, _) => SetupView(
          viewModel: SetupViewModel()
        ),
      )
    ]
  );
}