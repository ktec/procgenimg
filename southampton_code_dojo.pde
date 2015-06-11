PImage original;
GeneticAlgorithm algorithm;

void setup() {
  original = loadImage("barack_obama_with_angela_merkel.jpg");
  original.resize(480, 320);
  
  size(original.width * 2, original.height);
  
  algorithm = new GeneticAlgorithm(original, 1);
}

void draw() {
  background(0);
  
  image(original, 0, 0);
  
  GeneratedImage gen = algorithm.population[0];
  image(gen.img, width / 2, 0);
}
