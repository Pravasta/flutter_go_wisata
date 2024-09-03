import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../widgets/setting_button.dart';
import 'setting_printer_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(24.0),
        crossAxisCount: 2,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 24.0,
        children: [
          SettingButton(
            iconPath: Assets.icons.settings.printer.path,
            title: 'Printer',
            subtitle: 'kelola printer',
            onPressed: () {
              context.push(const SettingPrinterPage());
            },
          ),
          // SettingButton(
          //   iconPath: Assets.icons.settings.logout.path,
          //   title: 'Logout',
          //   subtitle: 'keluar dari aplikasi',
          //   onPressed: () {
          //     showDialog(
          //       context: context,
          //       builder: (context) => const LogoutTicketDialog(),
          //     );
          //   },
          // ),
          // SettingButton(
          //   iconPath: Assets.icons.settings.syncData.path,
          //   title: 'Sync Data',
          //   subtitle: 'sinkronasi online',
          //   onPressed: () {
          //     showDialog(
          //       context: context,
          //       builder: (context) => const SyncDataDialog(),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
