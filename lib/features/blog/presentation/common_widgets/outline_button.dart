part of 'common_widgets_import.dart';

class OutlineButton extends StatelessWidget {
  const OutlineButton({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        minimumSize: Size(MediaQuery.of(context).size.width, 44),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(11.r),
        ),
      ),
    );
  }
}
