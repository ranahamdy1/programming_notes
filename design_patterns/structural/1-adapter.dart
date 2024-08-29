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

// Adapter class
class LightningToUsbAdapter implements LightningPort {
  UsbPort usbPort;
  LightningToUsbAdapter(this.usbPort);

  @override
  void connectLightning() {
    usbPort.connectUsb();  // Adapting the UsbPort method to LightningPort
  }
}
