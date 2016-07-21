package com.estrongs.android.pop.app;

public class ee
{
  public String a = "";
  public String b = null;
  public boolean c = false;
  
  static ee[] a(String[] paramArrayOfString)
  {
    ee[] arrayOfee = new ee[paramArrayOfString.length];
    int i = 0;
    while (i < paramArrayOfString.length)
    {
      arrayOfee[i] = new ee();
      b = paramArrayOfString[i];
      i += 1;
    }
    return arrayOfee;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */