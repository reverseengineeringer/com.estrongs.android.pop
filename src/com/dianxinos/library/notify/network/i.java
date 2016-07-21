package com.dianxinos.library.notify.network;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

final class i
{
  private final String b;
  private final long[] c;
  private boolean d;
  private g e;
  private long f;
  private long g;
  
  private i(d paramd, String paramString)
  {
    b = paramString;
    c = new long[d.e(paramd)];
  }
  
  private void a(String[] paramArrayOfString)
  {
    if (paramArrayOfString.length != d.e(a)) {
      throw b(paramArrayOfString);
    }
    int i = 0;
    try
    {
      while (i < paramArrayOfString.length)
      {
        c[i] = Long.parseLong(paramArrayOfString[i]);
        i += 1;
      }
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw b(paramArrayOfString);
    }
  }
  
  private IOException b(String[] paramArrayOfString)
  {
    throw new IOException("unexpected journal line: " + Arrays.toString(paramArrayOfString));
  }
  
  public File a(int paramInt)
  {
    return new File(d.f(a), b + "." + paramInt);
  }
  
  public String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    long[] arrayOfLong = c;
    int j = arrayOfLong.length;
    int i = 0;
    while (i < j)
    {
      long l = arrayOfLong[i];
      localStringBuilder.append(' ').append(l);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public File b(int paramInt)
  {
    return new File(d.f(a), b + "." + paramInt + ".tmp");
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.network.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */