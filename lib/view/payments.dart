import 'package:first_ui_task/constant/style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../control/poviderone.dart';
import '../model/transaction_list.dart';

class Payments extends StatelessWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerone = Provider.of<ProviderOne>(context);
    final mediaheight = MediaQuery.of(context).size.height;
    final mediawidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: bluee,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: Center(child: Text('Payments')),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.info_outline)),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: mediaheight * 0.25,
                  width: mediawidth * 2,
                  decoration: BoxDecoration(
                      // color: Colors.red,
                      border: Border.all(width: 1.5, color: grayy),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Transaction Limit',
                          style: headingtext,
                        ),
                        Text(
                            'A free limit up to which you will recive\nthe online payments directly in your bank'),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: LinearProgressIndicator(
                            value: providerone.progress,
                            backgroundColor: Colors.grey[300],
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.blue),
                          ),
                        ),
                        Text(
                          '${providerone.totalAmount-providerone.usedAmount} left out of ${providerone.totalAmount}',
                          style: mediumtext,
                        ),
                        ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(backgroundColor: bluee),
                            onPressed: () {},
                            child: Text('Increase Limit'))
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Default Method',
                      style: onlyfont,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text('Online Payment', style: normaltext),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: grayy,
                            )
                          ],
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Payment Profile', style: onlyfont),
                    TextButton(
                        onPressed: () {
                          // providerone.Add();
                        },
                        child: Row(
                          children: [
                            Text(
                              'Bank Account',
                              style: normaltext,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: grayy,
                            )
                          ],
                        ))
                  ],
                ),
                Divider(
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Payments Overview',
                      style: headingtext,
                    ),
                    Row(
                      children: [
                        Text('life Time'),
                        Icon(Icons.keyboard_arrow_down)
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: mediaheight * 0.1,
                      width: mediawidth * 0.44,
                      decoration: BoxDecoration(
                          color: orangg, borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'AMOUNT ON HOLD',
                              style: whitenormal_text,
                            ),
                            Text(
                              '\$0',
                              style: whitelarge_text,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        providerone.Add();
                      },
                      child: Container(
                        height: mediaheight * 0.1,
                        width: mediawidth * 0.44,
                        decoration: BoxDecoration(
                            color: greenn,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'AMOUNT RECEIVED',
                                style: whitenormal_text,
                              ),
                              Text(
                                providerone.usedAmount.toString(),
                                style: whitelarge_text,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Ttansactions',
                  style: headingtext,
                ),
                Container(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                              color: grayy,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Text(
                            'On hold',
                            style: mediumtext,
                          )),
                        ),
                        Container(
                          height: 30,
                          width: 130,
                          decoration: BoxDecoration(
                              color: bluee,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Text(
                            'Payouts(15)',
                            style: whitenormal_text,
                          )),
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                              color: grayy,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Text(
                            'Refunds',
                            style: mediumtext,
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 600,
                  child: ListView.builder(
                    itemCount:7,
                    itemBuilder: (context, index) => Paymentlist(),
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
