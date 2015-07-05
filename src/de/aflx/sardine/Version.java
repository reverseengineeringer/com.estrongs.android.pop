package de.aflx.sardine;

import java.io.PrintStream;

public class Version
{
  public static String getImplementation()
  {
    Package localPackage = Version.class.getPackage();
    if (localPackage == null) {
      return null;
    }
    return localPackage.getImplementationVersion();
  }
  
  public static String getSpecification()
  {
    Package localPackage = Version.class.getPackage();
    if (localPackage == null) {
      return null;
    }
    return localPackage.getSpecificationVersion();
  }
  
  public static void main(String[] paramArrayOfString)
  {
    System.out.println("Version: " + getSpecification());
    System.out.println("Implementation: " + getImplementation());
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.Version
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */