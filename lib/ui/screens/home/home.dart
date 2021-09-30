import 'package:demo/controllers/controllers.dart';
import 'package:demo/ui/widgets/widgets.dart';
import 'package:demo/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          GetBuilder<PurchaseController>(builder: (controller) {
            Widget storeWidget;
            switch (controller.storeState) {
              case StoreState.loading:
                storeWidget = const Loading();
                break;
              case StoreState.available:
                storeWidget = const PurchaseList();
                break;
              case StoreState.notAvailable:
                storeWidget = const PurchasesNotAvailable();
                break;
            }
            return storeWidget;
          }),
          const PastPurchasesWidget(),
        ],
      ),
    );
  }
}
