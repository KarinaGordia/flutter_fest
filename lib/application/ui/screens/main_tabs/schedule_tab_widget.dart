import 'package:flutter/material.dart';
import 'package:flutter_fest/resources/resources.dart';

class ScheduleTabWidget extends StatefulWidget {
  const ScheduleTabWidget({super.key});

  @override
  State<ScheduleTabWidget> createState() => _ScheduleTabWidgetState();
}

class _ScheduleTabWidgetState extends State<ScheduleTabWidget> {
  int? _value = 0;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Images.appBarBg),
          alignment: Alignment.topLeft,
        ),
      ),
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            const AppBarLogoWidget(),
            PinnedHeaderSliver(
              child: Container(
                decoration: const BoxDecoration(
                  // borderRadius: BorderRadius.circular(20.0),
                  gradient: LinearGradient(colors: [
                    Color(0xFF00BD13),
                    Color(0xFF170AF4),
                  ],),
                ),
                height: 36,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return FilledButton(
                      style: FilledButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 16),),
                      onPressed: () {},
                      child: Text('Секция ${index + 1}'),
                    );

                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                ),
              ),
            ),
            SliverList.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return _SectionChipWidget(
                  index: index,
                  selected: _value == index,
                  onSelected: (bool selected) {
                    setState(() {
                      _value = selected ? index : null;
                    });
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionChipWidget extends StatelessWidget {
  const _SectionChipWidget(
      {super.key,
      required this.onSelected,
      required this.selected,
      required this.index});

  final ValueChanged<bool>? onSelected;
  final bool selected;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: ChoiceChip(
        showCheckmark: false,
        selectedColor: Colors.green,
        labelStyle: selected
            ? const TextStyle(
                color: Colors.white,
              )
            : const TextStyle(
                color: Colors.white60,
              ),
        backgroundColor: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: const BorderSide(
            width: 0,
          ),
        ),
        label: Text('Секция ${index + 1}'),
        selected: selected,
        onSelected: onSelected,
      ),
    );
  }
}

class AppBarLogoWidget extends StatelessWidget {
  const AppBarLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            // Image.asset(Images.appBarBg),
            Positioned(
              top: 20,
              right: 20,
              child: Image.asset(Images.appBarSurfLogo),
            ),
            Positioned(
              top: 40,
              left: 20,
              child: Image.asset(Images.appBarFfLogo),
            ),
          ],
        ),
      ),

      ///TO DO: add collapsedHeight mode

      expandedHeight: 200,
      floating: false,
      pinned: false,
      snap: false,
    );
  }
}
