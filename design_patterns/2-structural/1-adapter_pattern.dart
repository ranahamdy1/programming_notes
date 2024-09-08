//  هما فئتان توفران واجهات مختلفة LightningPort و UsbPort

//Lightning فئة تدعم منفذ 
class LightningPort {
  void connectLightning() {
    print(" Lightning تم الاتصال عبر منفذ ");
  }
}

//USB فئة تدعم منفذ 
class UsbPort {
  void connectUsb() {
    print(" USB تم الاتصال عبر منفذ ");
  }
}

// Adapter class
// Lightning متوافقًا مع منفذ USB فئة المحول التي تجعل منفذ
// UsbPort ولكنها في الواقع تستخدم كائنًا من فئة LightningPort يعمل كمحول، حيث يقوم بتنفيذ واجهة 
class LightningToUsbAdapter implements LightningPort {
  UsbPort usbPort;
  LightningToUsbAdapter(this.usbPort);

  @override
  void connectLightning() {
    usbPort.connectUsb();  // تكييف طريقة الاتصال عبر USB لتعمل كأنها اتصال عبر Lightning
  }
}

void main() {
  UsbPort usbPort = UsbPort();
  LightningPort lightningPort = LightningToUsbAdapter(usbPort);

  lightningPort.connectLightning(); //ستطبع: " USB تم الاتصال عبر منفذ " 
}

