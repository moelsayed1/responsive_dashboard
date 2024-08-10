import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_history_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionHistory});
  
  final TransactionHistoryModel transactionHistory;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        transactionHistory.title,
        style: StylesApp.styleSemiBold16,
      ),
      subtitle: Text(
        transactionHistory.date,
        style: StylesApp.styleRegular16.copyWith(
          color: const Color(0xffAAAAAA),
        ),
      ),
      trailing: Text(
        transactionHistory.amount,
        style: StylesApp.styleSemiBold20.copyWith(
          color: transactionHistory.isWithdrawal ? const Color(0xffF3735E) : const Color(0xff7DD97B),
        ),
      ),
    );
  }
}
