class GeneratedImage {
  static final int NUM_ITEMS = 100;
  
  Item[] items;
  PImage img;
  
  GeneratedImage(int imageWidth, int imageHeight) {
    this.items = new Item[NUM_ITEMS];
    for (int i = 0; i < NUM_ITEMS; i++) {
      this.items[i] = new Item(imageWidth, imageHeight);
    }
    
    img = createImage(imageWidth, imageHeight, RGB);
    
    this.preparePixels();
  }
  
  void preparePixels() {
    img.loadPixels();
    for (int i = 0; i < this.items.length; i++) {
      Item item = this.items[i];
      
      final color c = item.c;
      
      for (int dx = 0; dx < item.w; dx++) {
        for (int dy = 0; dy < item.h; dy++) {
          final int x = item.x + dx;
          final int y = item.y + dy;
          
          if ((x < 0 || x >= this.img.width) || (y < 0 || y >= this.img.height)) {
            continue;
          }
          
          img.pixels[location(x, y)] = c;
        }
      }
    }
    
    img.updatePixels();
  }
  
  int location(int x, int y) {
    return this.img.width * y + x;
  }
}

class Item {
  int x;
  int y;
  color c;
  int w;
  int h;
  
  Item(int imageWidth, int imageHeight) {
    this((int)random(imageWidth), (int)random(imageHeight), color((int)random(255), (int)random(255), (int)random(255)));
  }
  
  Item(int x, int y, color c) {
    this.x = x;
    this.y = y;
    this.c = c;
    
    this.w = 20;
    this.h = 20;
  }
}
