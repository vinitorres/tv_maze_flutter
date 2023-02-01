import 'package:flutter/material.dart';
import 'package:tv_shows_app/features/settings_page/cubit/settings_cubit.dart';
import 'package:tv_shows_app/shared/constants/app_values.dart';
import 'package:tv_shows_app/shared/injection/dependency_injection.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final cubit = getIt.get<SettingsCubit>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          title: const Text(
            'Settings',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
        SizedBox(
          height: AppValues.defaultLargerPadding,
        ),
        Column(
          children: [
            ListTile(
              leading: Icon(Icons.pin, size: 30, color: Colors.white),
              title: Text(
                'Create Pin',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              trailing: Icon(
                Icons.chevron_right_rounded,
                color: Colors.white,
                size: 30,
              ),
            ),
            Divider(
              color: Colors.grey[500],
            ),
            ListTile(
              leading: Icon(Icons.fingerprint_rounded,
                  size: 30, color: Colors.white),
              title: Text(
                'Enable Fingerprint',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              trailing: Switch(
                value: cubit.isFingerprintEnabled,
                onChanged: (value) {
                  setState(() {
                    cubit.toggleFingerprint();
                  });
                },
                activeColor: Colors.white,
                activeTrackColor: Colors.white,
                inactiveThumbColor: Colors.grey[700],
                inactiveTrackColor: Colors.grey[700],
              ),
            ),
          ],
        )
      ],
    );
  }
}

class OptionsItem extends StatelessWidget {
  const OptionsItem(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap});

  final String title;
  final Icon icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      trailing: Icon(
        Icons.chevron_right_rounded,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
