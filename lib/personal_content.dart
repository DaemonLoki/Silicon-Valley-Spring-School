import 'package:flutter/material.dart';
import 'ui/section_header.dart';

class PersonalContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        Image.asset("images/personal.jpeg"),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SectionHeader("About me"),
              Text(
                "My name is Stefan, and I'm currently doing my Master's in Computer Science at the FAU. Growing up in Ebermannstadt, in the 'Fränkische Schweiz', I know the Erlangen area for my whole life so it was obvious to study at the FAU. Starting with a Bachelor's in Medical Engineering I realized that this is not a perfect fit for me. So I switched to Computational Engineering and finished my degree there. For my Master's I realized that the field of Machine Learning and Artificial Intelligence was something I was really interested in and wanted to focus on.\n\nAside from university I really like to be active and do sports. In the winter I like to go snowboarding with friends and over the whole year I'm playing basketball at my hometown team."
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SectionHeader("Family"),
              ),
              Text(
                "I'm lucky enough to be able to say that I already have a little family. In June 2017 my little daughter 'Nora' was born. Currently I'm living together with my girlfried and Nora in Ebermannstadt. It's a great joy to have our little darling in our lives and we are enjoying every day of it. \n\nOf course handling everything between university, family and work is not always easy and provides quite some challenges. While this makes my student life different to most others it is always great to have the family back home. Here you can see my beautiful little family:"
              ),
              Center(child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Image.asset("images/nora.jpg", height: 300.0),
              )),
              Center(child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Image.asset("images/carina.jpg", height: 300.0),
              )),
          ],),
        )
      ],
    );
  }
}
