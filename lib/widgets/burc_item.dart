import 'package:flutter/material.dart';

import '../model/burc.dart';
import '../ui/selected_burc_detail.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({super.key, required this.listelenenBurc});
  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          elevation: 2,
          child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/selectedBurc', arguments: listelenenBurc);
            },
            leading: Image.asset(
              listelenenBurc.burcKucukResim,
            ),
            title: Text(
              listelenenBurc.burcAdi,
              style: myTextStyle.headline6,
            ),
            subtitle: Text(
              listelenenBurc.burcTarihi,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          )),
    );
  }
}
