import 'package:app_filmes/models/genre_model.dart';
import 'package:flutter/material.dart';
import 'package:app_filmes/aplication/ui/theme_extensions.dart';

class FilterTag extends StatelessWidget {
  final GenreModel model;
  final bool _selected;
  final VoidCallback onPressed;
  const FilterTag(
      {Key? key,
      required this.model,
      bool selected = false,
      required this.onPressed})
      : _selected = selected,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        constraints: BoxConstraints(minWidth: 100, minHeight: 30),
        decoration: BoxDecoration(
            color: _selected ? context.themeRed : Colors.black,
            borderRadius: BorderRadius.circular(30)),
        child: Align(
            alignment: Alignment.center,
            child: Text(
              model.name,
              style: TextStyle(color: Colors.white, fontSize: 14),
            )),
      ),
    );
  }
}
