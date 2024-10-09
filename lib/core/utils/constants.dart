import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Constants{
  static void showDialogError({required BuildContext context,required msg}){
    showDialog(
        context: context,
        builder: (context,)=>Center(
          child: Dialog(
            child: Column(
              children: [
                Text("$msg"),
              ],
            ),
          ),
    ));
  }
  static void showToast({required msg}){
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.deepPurple,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

}