package com.dropbox.client2;

import java.io.PrintStream;

public final class SdkVersion
{
  public static String get()
  {
    return "1.6.2";
  }
  
  public static void main(String[] paramArrayOfString)
  {
    System.out.println("Dropbox Java SDK, Version " + get());
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.SdkVersion
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */