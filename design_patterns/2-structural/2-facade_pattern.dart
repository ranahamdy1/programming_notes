// الفئات المعقدة
class CustomerData {
  void getCustomerDetails() {
    print("Fetching customer details...");
  }
}

class OrderProcessor {
  void processOrder() {
    print("Processing order...");
  }
}

class EmailSender {
  void sendConfirmationEmail() {
    print("Sending confirmation email...");
  }
}

// فئة الواجهة (Facade)
class OrderFacade {
  final CustomerData _customerData;
  final OrderProcessor _orderProcessor;
  final EmailSender _emailSender;

  OrderFacade(this._customerData, this._orderProcessor, this._emailSender);

  void placeOrder() {
    _customerData.getCustomerDetails();
    _orderProcessor.processOrder();
    _emailSender.sendConfirmationEmail();
    print("Order placed successfully!");
  }
}

void main() {
  final customerData = CustomerData();
  final orderProcessor = OrderProcessor();
  final emailSender = EmailSender();

  final orderFacade = OrderFacade(customerData, orderProcessor, emailSender);
  orderFacade.placeOrder();
}
