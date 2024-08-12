import 'package:aula02listview/list_view/domain/usecase/get_sales_list.dart';
import 'package:aula02listview/list_view/widgets/item_custom.widget.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  final String title;

  const ListViewBuilderScreen({
    super.key,
    required this.title,
  });

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  late List<String> products;
  late List<int> quantities;
  late GetSalesListUseCase getSalesListUseCase;

  @override
  void initState() {
    getSalesListUseCase = GetSalesListUseCase();
    products = getSalesListUseCase.products;
    quantities = getSalesListUseCase.quantities;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            // return ItemWidget(
            //   item: products[index],
            //   quantity: quantities[index],
            // );
            return const ItemCustomWidget();
          }),
    );
  }
}
