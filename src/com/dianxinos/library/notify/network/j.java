package com.dianxinos.library.notify.network;

import java.io.Closeable;
import java.io.File;
import java.io.InputStream;

public final class j
  implements Closeable
{
  private final String b;
  private final long c;
  private final InputStream[] d;
  private final File[] e;
  private final long f;
  
  private j(d paramd, String paramString, long paramLong1, InputStream[] paramArrayOfInputStream, File[] paramArrayOfFile, long paramLong2)
  {
    b = paramString;
    c = paramLong1;
    d = paramArrayOfInputStream;
    e = paramArrayOfFile;
    f = paramLong2;
  }
  
  public long a()
  {
    return f;
  }
  
  public InputStream a(int paramInt)
  {
    return d[paramInt];
  }
  
  public File b(int paramInt)
  {
    return e[paramInt];
  }
  
  public void close()
  {
    InputStream[] arrayOfInputStream = d;
    int j = arrayOfInputStream.length;
    int i = 0;
    while (i < j)
    {
      d.a(arrayOfInputStream[i]);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.network.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */