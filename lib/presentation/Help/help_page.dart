import 'package:dinamica_landing_page/presentation/Help/blocks/frequent_questions.dart';
import 'package:flutter/material.dart';
import 'package:dinamica_landing_page/constants/colors.dart';
import 'package:dinamica_landing_page/presentation/Help/blocks/help_center.dart';
import 'package:dinamica_landing_page/presentation/Home/blocks/footer.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: null,
        /* IconButton(
            onPressed: () => Navigator.pop(context),
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: const Icon(Icons.arrow_back_rounded, color: Colors.white)), */
        shadowColor: Colors.black,
        scrolledUnderElevation: 0.0,
        backgroundColor: primary,
        elevation: 10,
        title: Visibility(
          visible: true,
          child: Image.asset(
            'assets/images/dinamica/Dinamica.png',
            height: 40,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: const [
            HelpCenter(),
            FrequentQuestions(),
            SizedBox(height: 30),
            Footer(),
          ],
        )),
      ),
    );
  }
}
