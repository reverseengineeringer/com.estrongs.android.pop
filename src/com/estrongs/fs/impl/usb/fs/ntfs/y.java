package com.estrongs.fs.impl.usb.fs.ntfs;

import com.estrongs.fs.impl.usb.fs.c;
import com.estrongs.fs.impl.usb.fs.ntfs.a.j;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

public class y
  implements com.estrongs.fs.impl.usb.fs.a
{
  private final ab a;
  private c b;
  private i c;
  private String d;
  
  public y(String paramString, com.estrongs.fs.impl.usb.driver.a parama, ByteBuffer paramByteBuffer)
  {
    a = new ab(paramString, parama, paramByteBuffer);
    d = paramString;
    if (c == null)
    {
      c = new v(this, a.d()).d(".");
      b = ((c)c.a());
    }
  }
  
  public static boolean a(byte[] paramArrayOfByte)
  {
    return ab.a(paramArrayOfByte);
  }
  
  public c a()
  {
    return b;
  }
  
  public String b()
  {
    try
    {
      Object localObject = (w)d().a().d("$Volume");
      if (localObject == null) {
        return "UsbStorage";
      }
      localObject = ((w)localObject).f().b(96);
      if ((localObject instanceof j))
      {
        localObject = (j)localObject;
        byte[] arrayOfByte = new byte[((j)localObject).m()];
        if (arrayOfByte.length > 0)
        {
          ((j)localObject).a(((j)localObject).l(), arrayOfByte, 0, arrayOfByte.length);
          try
          {
            localObject = new String(arrayOfByte, "UTF-16LE");
            return (String)localObject;
          }
          catch (UnsupportedEncodingException localUnsupportedEncodingException)
          {
            throw new IllegalStateException("UTF-16LE charset missing from JRE", localUnsupportedEncodingException);
          }
        }
      }
      return "UsbStorage";
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public long c()
  {
    byte[] arrayOfByte;
    int i1;
    int j;
    int i;
    try
    {
      n localn = a.c().c(6L);
      arrayOfByte = new byte[(int)localn.b(128, null)];
      localn.a(0L, arrayOfByte, 0, arrayOfByte.length);
      i1 = arrayOfByte.length;
      j = 0;
      i = 0;
    }
    catch (Exception localException)
    {
      long l1;
      long l2;
      long l3;
      localException.printStackTrace();
      return -1L;
    }
    l1 = i;
    l2 = a.b();
    l3 = e();
    return l3 - l1 * l2;
    while (j < i1)
    {
      int m = arrayOfByte[j];
      int k = 0;
      while (k < 8)
      {
        int n = i;
        if ((m & 0x1) != 0) {
          n = i + 1;
        }
        m = (byte)(m >> 1);
        k += 1;
        i = n;
      }
      j += 1;
    }
  }
  
  public i d()
  {
    return c;
  }
  
  public long e()
  {
    try
    {
      long l = a.c().c(6L).k().b();
      int i = a.b();
      return l * 8L * i;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return -1L;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */