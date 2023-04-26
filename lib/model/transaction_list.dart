import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constant/style.dart';
import '../control/poviderone.dart';

class Paymentlist extends StatefulWidget {
  const Paymentlist({Key? key}) : super(key: key);

  @override
  State<Paymentlist> createState() => _PaymentlistState();
}

class _PaymentlistState extends State<Paymentlist> {

  @override
  Widget build(BuildContext context) {
    final providerone = Provider.of<ProviderOne>(context);
    
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        height: 90,
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey))),
        child: Stack(
          children: [
            ListTile(
              leading: Container(
                height: 50,
                width: 40,
                decoration: BoxDecoration(image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1682016149111-b6f316f6133c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1228&q=80'))),
              ),
              title: Text('65496549'),
              subtitle: Text('Apr 23, 2:23 PM',style: normaltext,),
              trailing: Text('\$770', style: bold_blue_text),
            ),
            Positioned(
                top: 70, left: 15,
                child: Text(' 799 deposited to : 58865222455511565585',
                  style: extrasmalltext,)),
            Positioned(
              top: 50,
              left: 287,
              child: Row(
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        color: greenn,
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  SizedBox(width: 5,),
                  Text('Successful', style: extrasmalltext,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}