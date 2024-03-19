import 'package:flutter/material.dart';
import 'package:irfanach/main.dart';
import 'package:irfanach/result_page.dart';

class textForm extends StatefulWidget {
  const textForm({super.key});

  @override
  State<textForm> createState() => _textFormState();
}

class _textFormState extends State<textForm> {
  TextEditingController  nameController=TextEditingController();
  TextEditingController  numberController=TextEditingController();
  TextEditingController  emailController=TextEditingController();
  TextEditingController  passwordController=TextEditingController();
  TextEditingController  addressController=TextEditingController();
  bool visibility=false;
  final phoneValidation=RegExp(r"[0-9]{10}");
  final emailValidation=RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
 final passwordValidation=RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$");
  final formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("TEXT FORM"),
      ),
    body: SingleChildScrollView(
      child: Container(
        height: height*0.9,
        width: width*1,
        margin: EdgeInsets.all(width*0.03),
        child: Form(
          key:formKey ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextFormField(
                controller: nameController,
                textCapitalization: TextCapitalization.words,
                keyboardType: TextInputType.text,
                // maxLength: 5,
                textInputAction: TextInputAction.done,
                // maxLines: 5,
                // minLines: 3,
                // obscureText: true,
                // obscuringCharacter: "*",
                style: TextStyle(
                  fontSize:width*0.04,
                  fontWeight:FontWeight.w700,
                ),
                decoration:InputDecoration(
                 suffixIcon: Icon(Icons.person),
                 // prefixText: ,

                 // suffixText: " aaa",
                  // suffixStyle: ,
                  labelText: "Name",
                  labelStyle: TextStyle(
                    fontSize: width*0.04,
                    fontWeight:FontWeight.w600,
                  ),
                  hintText: "Please enter your name",
                  hintStyle: TextStyle(
                    fontSize: width*0.03,
                    fontWeight: FontWeight.w700,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(width*0.03)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(width*0.03)
                  ),
                ) ,
              ),
              TextFormField(
                controller: numberController,
                // textCapitalization: TextCapitalization.sentences,
                keyboardType: TextInputType.number,
                 maxLength: 10,
                textInputAction: TextInputAction.done,
                // maxLines: 5,
                // minLines: 3,
                // obscureText: true,
                style: TextStyle(
                  fontSize:width*0.04,
                  fontWeight:FontWeight.w700,
                ),
                autovalidateMode:AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if(!phoneValidation.hasMatch(value!)){
                    return "enter valid number";
                  }
                  else{
                    return null;
                  }
                },
                decoration:InputDecoration(
                 suffixIcon: Icon(Icons.call),
                  labelText: "number",
                  labelStyle: TextStyle(
                    fontSize: width*0.04,
                    fontWeight:FontWeight.w600,
                  ),
                  hintText: "Please enter your number",
                  hintStyle: TextStyle(
                    fontSize: width*0.03,
                    fontWeight: FontWeight.w700,
                  ),
                 border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(width*0.03)
                  ),
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(
                  //     color: Colors.green,
                  //   ),
                  //   borderRadius: BorderRadius.circular(width*0.03)
                  // ),
                ) ,
              ),
              TextFormField(
                controller: emailController,
                // textCapitalization: TextCapitalization.sentences,
                keyboardType: TextInputType.emailAddress,
                maxLength: 8,
                textInputAction: TextInputAction.done,
                // maxLines: 5,
                // minLines: 3,
                // obscureText: true,
                style: TextStyle(
                  fontSize:width*0.04,
                  fontWeight:FontWeight.w700,
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
           if(!emailValidation.hasMatch(value!)){
             return "enter valid email";
            }
          else {
             return null;
           }
                },
                decoration:InputDecoration(
                 suffixIcon: Icon(Icons.email),
                  labelText: "Email",
                  labelStyle: TextStyle(
                    fontSize: width*0.04,
                    fontWeight:FontWeight.w600,
                  ),
                  hintText: "Enter your email",
                  hintStyle: TextStyle(
                    fontSize: width*0.03,
                    fontWeight: FontWeight.w700,
                  ),
                  // enabledBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(
                  //     color: Colors.green,
                  //   ),
                  //   borderRadius: BorderRadius.circular(width*0.03)
                  // ),
                 border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(width*0.03)
                  ),
                ) ,
              ),
              TextFormField(
                controller: passwordController,
                // textCapitalization: TextCapitalization.sentences,
                keyboardType: TextInputType.text,
                // maxLength: 6,
                textInputAction: TextInputAction.done,
                // maxLines: 5,
                // minLines: 3,
                obscureText: visibility? true:false,
                style: TextStyle(
                  fontSize:width*0.04,
                  fontWeight:FontWeight.w700,
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if(!passwordValidation.hasMatch(value!)){
                    return "enter valid password";
                  }
                  else {
                    return null;
                  }
                },
                decoration:InputDecoration(
                 suffixIcon: InkWell(
                   onTap: () {
                     visibility=!visibility;
                     setState(() {

                     });
                   },
                     child: Icon(visibility? Icons.visibility_off:Icons.visibility)),
                  labelText: "password",
                  labelStyle: TextStyle(
                    fontSize: width*0.04,
                    fontWeight:FontWeight.w600,
                  ),
                  hintText: " Password",
                  hintStyle: TextStyle(
                    fontSize: width*0.03,
                    fontWeight: FontWeight.w700,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(width*0.03)
                  ),
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(
                  //     color: Colors.green,
                  //   ),
                  //   borderRadius: BorderRadius.circular(width*0.03)
                  // ),
                ) ,
              ),
              TextFormField(
                controller: addressController,
                textCapitalization: TextCapitalization.words,
                keyboardType: TextInputType.multiline,
                 // maxLength: ,
                textInputAction: TextInputAction.newline,
                  maxLines: null,
                // obscureText: true,
                style: TextStyle(
                  fontSize:width*0.04,
                  fontWeight:FontWeight.w700,
                ),
                decoration:InputDecoration(
                 suffixIcon: Icon(Icons.note_alt_outlined),
                  labelText: "Address",
                  labelStyle: TextStyle(
                    fontSize: width*0.04,
                    fontWeight:FontWeight.w600,
                  ),
                  hintText: "Enter your address",
                  hintStyle: TextStyle(
                    fontSize: width*0.03,
                    fontWeight: FontWeight.w700,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(width*0.03)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(width*0.03)
                  ),
                ) ,
              ),
              InkWell(
                onTap: () {
                  if(
                  nameController.text!="" &&
                      numberController.text!="" &&
                      emailController.text!="" &&
                      passwordController.text!="" &&
                     addressController.text!=""&&
                  formKey.currentState!.validate()
                  ){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => dataPass(
                        name: nameController.text,
                        phone:  numberController.text,
                        email: emailController.text,
                        password:  passwordController.text,
                        address:  addressController.text),));
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("submitted successfully")));
                  }
                  else{
                    nameController.text=="" ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your name"))):
                    numberController.text=="" ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your number"))):
                    emailController.text=="" ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your email"))):
                    passwordController.text=="" ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your password"))):
                   addressController.text==""? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your address"))):
                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your valid details")));
                  }

                  // name_controller.clear();
                  // number_controller.clear();
                  // email_controller.clear();
                  // password_controller.clear();
                  // address_controller.clear();
                  print(nameController);
                  print(numberController);
                  print(emailController);
                  print(passwordController);
                  print(addressController);
                },
                child: Container(
                  height: width*0.1,
                  width: width*0.2,
                  child: Center(child: Text("SUBMIT",
                  style: TextStyle(
                    color: Colors.white
                  ),
                  )),
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(width*0.03)
                  ),
                ),
              )


            ],
          ),
        ),
      ),
    ),
    );
  }
}
