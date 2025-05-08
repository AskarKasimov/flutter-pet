import 'package:flutter/widgets.dart';

class SearchBar extends StatefulWidget {
  final Color textColor;
  final Color cursorColor;
  final Color backgroundColor;

  const SearchBar({
    required this.textColor,
    required this.cursorColor,
    required this.backgroundColor,
    super.key,
  });

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return EditableText(
      controller: _controller,
      focusNode: _focusNode,
      style: TextStyle(color: widget.textColor),
      cursorColor: widget.cursorColor,
      backgroundCursorColor: widget.backgroundColor,
    );
  }
}
