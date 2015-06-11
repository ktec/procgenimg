class GeneticAlgorithm {
  
  GeneratedImage[] population;
  PImage base;
  
  GeneticAlgorithm(PImage base, int populationSize) {
    this.base = base;
    population = new GeneratedImage[populationSize];
    
    for (int i = 0; i < populationSize; i++) {
      population[i] = new GeneratedImage(base.width, base.height);
    }
  }
  
  void run() {
  }
  
  float evaluateFitness(final PImage img) {
    // TODO
    return 0.0;
  }
  
  GeneratedImage breed(GeneratedImage img1, GeneratedImage img2) {
    // TODO
    return img1;
  }
  
  GeneratedImage mutate(GeneratedImage img) {
    // TODO
    return img;
  }
}
