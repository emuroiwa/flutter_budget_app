import 'package:budget/models/category_model.dart';
import 'package:budget/models/expense_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              forceElevated: true,
              floating: true,
              expandedHeight: 100.0,
              leading: IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {},
              ),
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Budget App'),
              ),
              actions: [IconButton(icon: Icon(Icons.add), onPressed: () {})]),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                if (index == 0) {
                  return Container(
                    margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 2),
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // child: BarChart(weeklySpending),
                  );
                } else {
                  // // final Category category = categories[index - 1];
                  // double totalAmountSpent = 0;
                  // category.expenses.forEach((Expense expense) {
                  //   totalAmountSpent += expense.cost;
                  // });
                  // return _buildCategory(category, totalAmountSpent);
                }
              },
              // `childCount: 1 + categories.length,
            ),
          ),
        ],
      ),
    );
  }
}
