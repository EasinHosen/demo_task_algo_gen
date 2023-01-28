import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({Key? key}) : super(key: key);
  static const String routeName = '/text_page';

  @override
  Widget build(BuildContext context) {
    bool flag = false;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Page'),
      ),
      body: Center(
        child: Row(
          children: [
            const Expanded(
              flex: 2,
              child: Text(
                  '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.'''),
            ),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                onPressed: () {
                  flag = !flag;
                  if (kDebugMode) {
                    print('Pressed $flag');
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (flag) return Colors.green;
                      return Colors.blue;
                    },
                  ),
                ),
                child: const Text('Tap'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
