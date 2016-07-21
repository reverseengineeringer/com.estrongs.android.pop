package com.baidu.mobstat;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class cq
{
  public static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (Throwable paramCloseable)
    {
      cr.b(paramCloseable);
    }
  }
  
  public static boolean a(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    if ((paramInputStream != null) && (paramOutputStream != null))
    {
      byte[] arrayOfByte = new byte['࿐'];
      try
      {
        for (;;)
        {
          int i = paramInputStream.read(arrayOfByte);
          if (i == -1) {
            return true;
          }
          paramOutputStream.write(arrayOfByte, 0, i);
        }
        return false;
      }
      catch (IOException paramInputStream)
      {
        cr.b(paramInputStream);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.cq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */