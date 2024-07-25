abstract class Printer {
  void print(Document d);
}

abstract class Scanner {
  void scan(Document d);
}

abstract class Fax {
  void fax(Document d);
}

abstract class Stapler {
  void staple(Document d);
}

class Document {
  final String content;

  Document(this.content);
}

class SimplePrinter implements Printer {
  @override
  void print(Document d) {
    print('Printing: ${d.content}' as Document);
  }
}

class AdvancedPrinter implements Printer, Scanner, Fax, Stapler {
  @override
  void print(Document d) {
    print('Printing: ${d.content}' as Document);
  }

  @override
  void scan(Document d) {
    print('Scanning: ${d.content}' as Document);
  }

  @override
  void fax(Document d) {
    print('Faxing: ${d.content}' as Document);
  }

  @override
  void staple(Document d) {
    print('Stapling: ${d.content}' as Document);
  }
}

void main() {
  Document doc = Document('This is a document.');

  Printer simplePrinter = SimplePrinter();
  simplePrinter.print(doc);

  AdvancedPrinter advancedPrinter = AdvancedPrinter();
  advancedPrinter.print(doc);
  advancedPrinter.scan(doc);
  advancedPrinter.fax(doc);
  advancedPrinter.staple(doc);
}
