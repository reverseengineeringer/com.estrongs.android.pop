package com.estrongs.io.archive.aeszip;

import de.a.a.a.a.d;
import java.io.OutputStream;
import java.util.zip.CRC32;

class l
  extends OutputStream
{
  long a;
  CRC32 b;
  OutputStream c;
  d d;
  private byte[] f = new byte[0];
  
  l(k paramk, OutputStream paramOutputStream, d paramd)
  {
    c = paramOutputStream;
    d = paramd;
    b = new CRC32();
  }
  
  private void a(byte[] paramArrayOfByte, int paramInt)
  {
    d.a(paramArrayOfByte, paramInt);
    c.write(paramArrayOfByte, 0, paramInt);
    if (b != null) {
      b.update(paramArrayOfByte, 0, paramInt);
    }
    a += paramInt;
  }
  
  public long a()
  {
    if (b != null) {
      return b.getValue();
    }
    return 0L;
  }
  
  public void close()
  {
    if (f.length > 0) {
      a(f, f.length);
    }
  }
  
  public void write(int paramInt)
  {
    int i = (byte)(paramInt & 0xFF);
    c.write(new byte[] { i }, 0, 1);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (f.length > 0)
    {
      byte[] arrayOfByte = new byte[f.length + paramInt2];
      System.arraycopy(f, 0, arrayOfByte, 0, f.length);
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte, f.length, paramInt2);
      f = new byte[0];
      write(arrayOfByte, 0, arrayOfByte.length);
      return;
    }
    paramInt1 = paramInt2 % 16;
    if (paramInt1 == 0)
    {
      a(paramArrayOfByte, paramInt2);
      return;
    }
    if (paramInt2 < 16)
    {
      a(paramArrayOfByte, paramInt2);
      return;
    }
    f = new byte[paramInt1];
    System.arraycopy(paramArrayOfByte, paramInt2 - paramInt1, f, 0, paramInt1);
    a(paramArrayOfByte, paramInt2 - paramInt1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.aeszip.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */