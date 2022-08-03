#include 
void *barber(void *junk) {
    // While there are still customers to be serviced...
    // Our barber is omnicient and can tell if there are 
    // customers still on the way to his shop.
    while (!allDone) {

  // Sleep until someone arrives and wakes you..
  printf("The barber is sleeping\n");
  sem_wait(&barberPillow);

  // Skip this stuff at the end...
  if (!allDone) {

      // Take a random amount of time to cut the
      // customer's hair.
      printf("The barber is cutting hair\n");
      randwait(3);
      printf("The barber has finished cutting hair.\n");

      // Release the customer when done cutting...
      sem_post(&seatBelt);
  }
  else {
      printf("The barber is going home for the day.\n");
  }
    }
}