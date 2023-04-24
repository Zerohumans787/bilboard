public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";
public void setup()
{
  for(int i=1;i<e.length()-11;i++){
  String digits = e.substring(i,i+10);
  double dNum = Double.parseDouble(digits);
  System.out.print(dNum);
  System.out.println(isPrime(dNum));
  }
}
public void draw()
{
  //not needed for this assignment
}
public boolean isPrime(double num) {
  boolean result = true;
  if (num <=2)
  {
    if (num<=1)result=false;
    else {
      result=true;
    }
  } else
  {
    for (int i=2; i <= Math.sqrt(num); i++)
    {
      if (num % i == 0)
      {
        result = false;
        break;
      } else {
        result=true;
      }
    }
  }
  return result;
}
