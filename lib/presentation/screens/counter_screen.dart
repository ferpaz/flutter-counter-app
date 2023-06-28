import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App', style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
            Text('Click${clickCounter == 1 ? '' : 's'}', style: const TextStyle(fontSize: 50, fontWeight: FontWeight.w100)),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.refresh_outlined,
            tooltip: 'Reiniciar',
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),

          const SizedBox (height: 10, width: 10,),

          CustomButton(
            icon: Icons.plus_one,
            tooltip: 'Incrementar',
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
          ),

          const SizedBox (height: 10, width: 10,),

          CustomButton(
            icon: Icons.exposure_minus_1,
            tooltip: 'Decrementar',
            onPressed: () {
              setState(() {
                if (clickCounter == 0) return;
                clickCounter--;
              });
            },
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String? tooltip;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.tooltip,
    this.onPressed });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      foregroundColor: Theme.of(context).colorScheme.onSecondary,
      enableFeedback: true,
      onPressed: onPressed,
      tooltip: tooltip,
      child: Icon(icon),
    );
  }
}
