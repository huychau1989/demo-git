import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class textfield extends StatefulWidget {
  const textfield({super.key});

  @override
  State<textfield> createState() => _textfieldState();
}

class _textfieldState extends State<textfield> {
  final TextEditingController _emailController=TextEditingController();
 // final TextEditingController _passwordController=TextEditingController();
  final _emailFromkey=GlobalKey<FormState>();
  String? _checkmail(String? value){
    return _emailController.text.length<=10 ? 'Moi ban nhap hon 10 ky tu':null;
  }

   bool _obsPass=false  ;
  void pressPass(){
    setState(() {
      _obsPass=!_obsPass;
    });

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            child: TextFormField(
              key: _emailFromkey,
              validator: _checkmail,
              controller: _emailController,
                obscureText: false,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  labelText: 'Email:',
                  labelStyle:Theme.of(context)
                      .textTheme
                      .labelMedium

                      ?.copyWith(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),
                    prefixIcon: const Icon(
                      Icons.mail,
                      size: 30,),
                  contentPadding: EdgeInsets.symmetric(vertical: 20),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)
                  ),
                  // enabledBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.black),
                  // ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)
                  ),
                  focusedErrorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderSide:BorderSide(color: Colors.red)
                  )
                ),

              ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(

            cursorColor: Colors.black,
            obscureText: _obsPass,
            decoration: InputDecoration(
              labelText: 'Password:',
              labelStyle: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),
              prefix: const Icon(Icons.lock,size: 30,),
              suffixIcon: IconButton(
                icon: _obsPass? const Icon(Icons.visibility_off) :const Icon(Icons.visibility),
                onPressed: pressPass,

              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 20),
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red)
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red)
              )
            ),
          ),
          ElevatedButton(
              onPressed: (){
                //_emailFormKey.currentState!.validate();
              },
              child: Text('Longin')
          ),
      ]
      ),
    );
  }
}


