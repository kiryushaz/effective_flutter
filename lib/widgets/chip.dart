import 'package:flutter/material.dart';
import 'header.dart';
import '../themes/colors.dart';
import '../themes/strings.dart';

class SberCards extends StatelessWidget {
  const SberCards({super.key, required this.items});

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          title: getString['chipsheadertitle'] ?? '',
          subtitle: getString['chipsheadersubtitle'] ?? '',
        ),
        Container(height: 4),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: <Widget>[
            for (String item in items)
              SberCardItem(item: item)
          ],
        )
      ],
    );
  }
}

class SberCardItem extends StatefulWidget {
  final String item;
  const SberCardItem({super.key, required this.item});

  @override
  State<StatefulWidget> createState() => _SberCardItemState();
}

class _SberCardItemState extends State<SberCardItem> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {
        setState(() {
          _selected = !_selected;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
        decoration: ShapeDecoration(
          color: _selected ? AppColors.selectedChipColor : AppColors.chipColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(widget.item, style: Theme.of(context).textTheme.titleSmall)
      )
    );
  }
}
