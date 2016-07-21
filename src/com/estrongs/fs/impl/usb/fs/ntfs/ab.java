package com.estrongs.fs.impl.usb.fs.ntfs;

import com.estrongs.android.util.l;
import com.estrongs.fs.impl.usb.UsbFsException;
import com.estrongs.fs.impl.usb.UsbFsException.ERROR_CODE;
import java.nio.ByteBuffer;

public class ab
{
  private static final String a = ab.class.getSimpleName();
  private static boolean b = false;
  private byte c = 1;
  private final com.estrongs.fs.impl.usb.driver.a d;
  private int e;
  private final a f;
  private u g;
  private n h;
  private int i;
  
  public ab(String paramString, com.estrongs.fs.impl.usb.driver.a parama, ByteBuffer paramByteBuffer)
  {
    paramString = paramByteBuffer;
    if (paramByteBuffer == null)
    {
      paramString = ByteBuffer.allocate(512);
      parama.a(0L, paramString);
    }
    if (!a(paramString.array())) {
      throw new UsbFsException("unsupported partition type", UsbFsException.ERROR_CODE.USB_ERROR_TYPE_NOT_SUPPORTE);
    }
    d = parama;
    f = new a(paramString.array());
    e = f.d();
    if (e <= 0) {
      e = 4096;
    }
  }
  
  public static boolean a(byte[] paramArrayOfByte)
  {
    return new String(paramArrayOfByte, 3, 8).equals("NTFS    ");
  }
  
  public final a a()
  {
    return f;
  }
  
  public void a(long paramLong, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (b)
    {
      String str = a;
      StringBuilder localStringBuilder = new StringBuilder().append("readClusters(").append(paramLong).append(", ").append(paramInt2).append(") ");
      j = i;
      i = (j + 1);
      l.b(str, j);
    }
    int j = b();
    long l = j;
    d.a(l * paramLong, ByteBuffer.wrap(paramArrayOfByte, paramInt1, j * paramInt2));
  }
  
  public int b()
  {
    if (e == 0) {
      e = 4096;
    }
    return e;
  }
  
  public u c()
  {
    a locala;
    int j;
    int k;
    if (g == null)
    {
      locala = a();
      j = locala.c();
      k = b();
      if (j >= k) {
        break label75;
      }
      j = 1;
    }
    for (;;)
    {
      byte[] arrayOfByte = new byte[j * k];
      a(locala.b(), arrayOfByte, 0, j);
      g = new u(this, arrayOfByte, 0);
      g.a();
      return g;
      label75:
      j /= k;
    }
  }
  
  public n d()
  {
    if (h == null)
    {
      h = c().c(5L);
      if (b) {
        l.b(a, "getRootDirectory: " + h.i());
      }
    }
    return h;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */