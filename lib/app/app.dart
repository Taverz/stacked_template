import 'package:stacked_template/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:stacked_template/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:stacked_template/ui/views/home/home_view.dart';
import 'package:stacked_template/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_template/ui/views/login/login_view.dart';
import 'package:stacked_template/services/stripe_service.dart';
import 'package:stacked_template/ui/bottom_sheets/alert/alert_sheet.dart';
import 'package:stacked_template/ui/dialogs/error/error_dialog.dart';
import 'package:stacked_template/ui/views/login/login_view.dart';
import 'package:stacked_template/services/stripe_service.dart';
import 'package:stacked_template/ui/bottom_sheets/alert/alert_sheet.dart';
import 'package:stacked_template/ui/dialogs/error/error_dialog.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: LoginView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: StripeService),
    LazySingleton(classType: StripeService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    StackedBottomsheet(classType: AlertSheet),
    StackedBottomsheet(classType: AlertSheet),
// @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    StackedDialog(classType: ErrorDialog),
    StackedDialog(classType: ErrorDialog),
// @stacked-dialog
  ],
)
class App {}
