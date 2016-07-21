package com.estrongs.android.widget;

import java.io.File;

public class af
{
  private File[] a;
  int j = 0;
  
  protected Object a(File paramFile, String paramString)
  {
    return null;
  }
  
  public Object a(String paramString)
  {
    if (j >= b()) {
      j = (b() - 1);
    }
    return a(a[j], paramString);
  }
  
  public boolean a(File[] paramArrayOfFile)
  {
    a = paramArrayOfFile;
    return true;
  }
  
  public int b()
  {
    if (a == null) {
      return 0;
    }
    return a.length;
  }
  
  public void b(int paramInt)
  {
    j = paramInt;
  }
  
  public void b(String paramString)
  {
    int k = 0;
    if (a == null) {
      return;
    }
    int i = 0;
    for (;;)
    {
      if ((i >= a.length) || (paramString.equals(a[i].getAbsolutePath())))
      {
        if (i == a.length) {
          break;
        }
        paramString = new File[a.length - 1];
        while (k < i)
        {
          paramString[k] = a[k];
          k += 1;
        }
      }
      i += 1;
    }
    i += 1;
    while (i < a.length)
    {
      paramString[(i - 1)] = a[i];
      i += 1;
    }
    a = paramString;
  }
  
  public Object c(int paramInt)
  {
    return a[paramInt];
  }
  
  public File[] c()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */