package com.jcraft.jsch;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class IO
{
  InputStream a;
  OutputStream b;
  OutputStream c;
  private boolean d = false;
  private boolean e = false;
  private boolean f = false;
  
  int a()
  {
    return a.read();
  }
  
  public void a(Packet paramPacket)
  {
    b.write(a.b, 0, a.c);
    b.flush();
  }
  
  void a(InputStream paramInputStream)
  {
    a = paramInputStream;
  }
  
  void a(InputStream paramInputStream, boolean paramBoolean)
  {
    d = paramBoolean;
    a(paramInputStream);
  }
  
  void a(OutputStream paramOutputStream)
  {
    b = paramOutputStream;
  }
  
  void a(OutputStream paramOutputStream, boolean paramBoolean)
  {
    e = paramBoolean;
    a(paramOutputStream);
  }
  
  void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    b.write(paramArrayOfByte, paramInt1, paramInt2);
    b.flush();
  }
  
  void b()
  {
    try
    {
      if ((b != null) && (!e)) {
        b.close();
      }
      b = null;
      return;
    }
    catch (Exception localException) {}
  }
  
  void b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    c.write(paramArrayOfByte, paramInt1, paramInt2);
    c.flush();
  }
  
  public void c()
  {
    try
    {
      if ((a != null) && (!d)) {
        a.close();
      }
      a = null;
    }
    catch (Exception localException2)
    {
      for (;;) {}
    }
    b();
    try
    {
      if ((c != null) && (!f)) {
        c.close();
      }
      c = null;
      return;
    }
    catch (Exception localException1) {}
  }
  
  void c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i;
    do
    {
      i = a.read(paramArrayOfByte, paramInt1, paramInt2);
      if (i < 0) {
        throw new IOException("End of IO Stream Read");
      }
      paramInt1 += i;
      i = paramInt2 - i;
      paramInt2 = i;
    } while (i > 0);
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.IO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */