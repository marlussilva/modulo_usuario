import 'package:flutter/material.dart';

enum AlertType {
  attention,
  error,
  information,
  success,
}

class CustomAlert {
  final String message;
  final String title;
  final AlertType alertType;

  CustomAlert({
    required this.message,
    required this.title,
    required this.alertType,
  });

  IconData _getIcon() {
    switch (alertType) {
      case AlertType.attention:
        return Icons.warning;
      case AlertType.error:
        return Icons.error;
      case AlertType.information:
        return Icons.info;
      case AlertType.success:
        return Icons.check_circle;
      default:
        return Icons.info;
    }
  }

  Color _getColor() {
    switch (alertType) {
      case AlertType.attention:
        return Colors.yellow[800]!;
      case AlertType.error:
        return Colors.red;
      case AlertType.information:
        return Colors.blueAccent;
      case AlertType.success:
        return Colors.green;
      default:
        return Colors.blueAccent;
    }
  }

  void show(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double titleFontSize =
        width < 400 ? 15 : 24; // Ajuste os valores conforme a necessidade
    double iconSize = width < 400 ? 40 : 60;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth:
                    400), // Limita a largura máxima para tablets/telas maiores
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              title: Center(
                child: Text(
                  title,
                  style: TextStyle(
                    color: _getColor(),
                    fontWeight: FontWeight.bold,
                    fontSize: titleFontSize,
                  ),
                ),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    _getIcon(),
                    size: iconSize,
                    color: _getColor(),
                  ),
                  SizedBox(height: 16),
                  Text(
                    message,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 16),
                  TextButton(
                    child: Text(
                      'Fechar',
                      style: TextStyle(color: _getColor()),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
              elevation: 10,
              backgroundColor: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
