import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/globalcolors.dart';
class SocialLogin extends StatelessWidget {
  const SocialLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "Or Sign in with",
            style: TextStyle(
              color: GlobalColors.textColor,
              fontSize: 14,
            ),
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.1),
                        blurRadius: 10
                      )
                    ]
                  ),
                  child:SvgPicture.asset('assets/images/google.svg',height: 40,) ,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.1),
                            blurRadius: 10
                        )
                      ]
                  ),
                  child:SvgPicture.asset('assets/images/facebook.svg',height: 40,) ,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.1),
                            blurRadius: 10
                        )
                      ]
                  ),
                  child:SvgPicture.asset('assets/images/twitter.svg',
                  height: 40,) ,

                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
