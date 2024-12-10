import 'package:flutter/material.dart';
import 'package:hover_widget/hover_widget.dart';

class CustomItemWidget extends StatefulWidget {
  const CustomItemWidget(
      {super.key,
        required this.imagepath,
        required this.text,
        this.width = 160,
        this.height = 160});
  final String imagepath;
  final String text;
  final double width;
  final double height;

  @override
  // ignore: library_private_types_in_public_api
  _CustomItemWidgetState createState() => _CustomItemWidgetState();
}

class _CustomItemWidgetState extends State<CustomItemWidget> {
  bool isHovered = false;

  void Function()? change() {
    setState(() {
      isHovered = !isHovered;
    });
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0, top: 15, left: 5),
      child: HoverWidget(
        onTap: change,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          width: widget.width,
          height: isHovered
              ? widget.height
              : widget.height, // Height change on hover
          decoration: BoxDecoration(
            color: const Color(0xffDAE0F1),
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
                topRight: Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                offset: const Offset(0, 20),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  widget.imagepath, // Your image path here
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 10),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 300),
                opacity: isHovered ? 1.0 : 0.0, // Fade-in text on hover
                child: Text(
                  widget.text,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}