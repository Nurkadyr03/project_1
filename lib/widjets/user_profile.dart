// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  UserProfile({super.key});
  List<_MenuRowData> firstMenuData = [
    _MenuRowData(icon: Icons.favorite_outline_outlined, text: "избранное"),
    _MenuRowData(icon: Icons.call, text: "зонки"),
    _MenuRowData(icon: Icons.computer, text: "устройство"),
    _MenuRowData(icon: Icons.folder, text: "папка с чатами"),
  ];
  List<_MenuRowData> secondMenuData = [
    _MenuRowData(icon: Icons.notifications, text: "уведомление и звонки"),
    _MenuRowData(icon: Icons.privacy_tip, text: "конфидицальность"),
    _MenuRowData(icon: Icons.date_range, text: "данные и памят"),
    _MenuRowData(icon: Icons.brush, text: "оформление"),
    _MenuRowData(icon: Icons.language, text: "язык"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("настройки"),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _UserInfo(),
              SizedBox(height: 30),
              _MenuWidgets(menuRow: firstMenuData),
              SizedBox(height: 30),
              _MenuWidgets(menuRow: secondMenuData)
            ],
          ),
        ));
  }
}

class _MenuRowData {
  final IconData icon;
  final String text;
  _MenuRowData({required this.icon, required this.text});
}

class _MenuWidgets extends StatelessWidget {
List<_MenuRowData> menuRow;
   _MenuWidgets({
    Key? key,
    required this.menuRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          children: menuRow.map((firstMenuData) => _MenuWidgetRow(firstMenuData: firstMenuData)).toList(),
        ));
  }
}

class _MenuWidgetRow extends StatelessWidget {
 _MenuRowData firstMenuData;
   _MenuWidgetRow({
    Key? key,
    required this.firstMenuData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          Icon(firstMenuData.icon),
          SizedBox(width: 15),
          Expanded(child: Text(firstMenuData.text)),
          Icon(Icons.chevron_right_sharp),
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(height: 30),
          _AvatarWidget(),
          const SizedBox(height: 30),
          _UserName(),
          const SizedBox(height: 10),
          _UserNomer(),
          const SizedBox(height: 8),
          _UserEmail(),
        ],
      ),
    );
  }
}

class _UserEmail extends StatelessWidget {
  const _UserEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("@Elchev", style: TextStyle(color: Colors.grey, fontSize: 10));
  }
}

class _UserNomer extends StatelessWidget {
  const _UserNomer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("+7926855911",
        style: TextStyle(color: Colors.grey, fontSize: 12));
  }
}

class _UserName extends StatelessWidget {
  const _UserName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("Evgeniy Elchev",
        style: TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold));
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Placeholder(),
    );
  }
}
