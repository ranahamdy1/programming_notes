class LightningPort {
  void connectLightning() {
    print("Connected with Lightning Port");
  }
}

class UsbPort {
  void connectUsb() {
    print("Connected with USB Port");
  }
}

class LightningToUsbAdapter implements LightningPort {
  UsbPort usbPort;

  LightningToUsbAdapter(this.usbPort);

  @override
  void connectLightning() {
    usbPort.connectUsb();
  }
}
