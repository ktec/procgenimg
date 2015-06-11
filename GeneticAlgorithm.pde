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
}
