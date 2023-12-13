import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'header.dart';
import '../themes/strings.dart';

class SberList extends StatelessWidget {
  const SberList({super.key, required this.items});

  final List<Map> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          title: getString['listheadertitle'] ?? '',
          subtitle: getString['listheadersubtitle'] ?? '',
        ),
        Column(
          children: <Widget>[
            for (final (index, item) in items.indexed) ...{
              ListTile(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(item['title']))
                  );
                },
                contentPadding: const EdgeInsets.all(0),
                leading: SvgPicture.asset(item['icon']),
                title: Text(item['title']),
                titleTextStyle: Theme.of(context).textTheme.bodyLarge,
                subtitle: item['subtitle'].isNotEmpty ? Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(item['subtitle']),
                ) : null,
                subtitleTextStyle: Theme.of(context).textTheme.bodySmall,
                trailing: SvgPicture.asset('assets/images/ic_24_chevron_right.svg'),
              ),
              if (index != items.length - 1) const Divider(height: 4, indent: 48)
            }
          ],
        ),
      ]
    );
  }
}
