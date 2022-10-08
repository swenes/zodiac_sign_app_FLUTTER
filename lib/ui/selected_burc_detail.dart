import 'package:flutter/material.dart';
import '../model/burc.dart';
import 'package:palette_generator/palette_generator.dart';

class SelectedBurc extends StatefulWidget {
  final Burc selectedBurc;
  const SelectedBurc({super.key, required this.selectedBurc});

  @override
  State<SelectedBurc> createState() => _SelectedBurcState();
}

class _SelectedBurcState extends State<SelectedBurc> {
  Color appBarColor = Colors.transparent;
  late PaletteGenerator _paletteGenerator;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      changeAppBarColor();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: appBarColor,
            flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  widget.selectedBurc.burcAdi + ' Burcu ve Özellikleri',
                ),
                centerTitle: true,
                background: Image.asset(
                  widget.selectedBurc.burcBuyukResim,
                  fit: BoxFit.cover,
                )),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(
                  widget.selectedBurc.burcDetayi,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void changeAppBarColor() async {
    _paletteGenerator = await PaletteGenerator.fromImageProvider(AssetImage(widget.selectedBurc.burcBuyukResim));
    setState(() {
      appBarColor = _paletteGenerator.dominantColor!.color;
    });
  }
}
