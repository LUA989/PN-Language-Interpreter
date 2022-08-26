void setup() {
  exec("code.pp", "text.txt");
}

void exec(String progPath, String textFilePath) {
  int pos = 0;
  String[] lines = loadStrings(textFilePath);
  byte[] prog = loadBytes(progPath);
  for(byte cmd : prog) {
    switch(cmd) {
      default:
      System.err.println("Invalid command '" + cmd + "'");
      break;
      
      case 'P':
      println(lines[pos]);
      break;
      
      case '+':
      pos++;
      break;
    }
  }
}
