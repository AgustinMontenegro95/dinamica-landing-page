import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:dinamica_landing_page/constants/components.dart';
import 'package:dinamica_landing_page/ui/contact/widgets/message_form.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      child: Container(
        width: double.infinity,
        padding: blockPadding(context).copyWith(top: 0),
        constraints: const BoxConstraints(maxWidth: 800),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Icon(
                Icons.mark_email_read_rounded,
                color: primary,
                size: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                    ? 40
                    : 50,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Text("O bien, por mensaje directo",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: ResponsiveWrapper.of(context)
                              .isSmallerThan("MOBILE_LARGE")
                          ? 20
                          : ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                              ? 15
                              : 20,
                      letterSpacing: 2,
                    )),
              ),
              const MessageForm(),
            ],
          ),
        ),
      ),
    );
  }
}
