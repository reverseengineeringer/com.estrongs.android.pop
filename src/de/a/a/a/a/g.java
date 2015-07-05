package de.a.a.a.a;

import java.util.zip.ZipException;

public class g
{
  protected h a;
  protected long b;
  protected boolean c;
  protected boolean d;
  protected short e;
  protected long f;
  protected String g;
  protected int h;
  protected short i;
  protected short j;
  protected long k;
  protected int l;
  protected int m;
  protected byte n;
  protected short o = 0;
  
  public g(h paramh, long paramLong)
  {
    a = paramh;
    b = paramLong;
    a();
  }
  
  protected void a()
  {
    if (a.a(b) != 33639248L) {
      throw new ZipException("expected CENSIC not found in central directory (at end of zip file)");
    }
    o = a.b(b + 8L);
    if ((o & 0x1) > 0) {}
    byte[] arrayOfByte1;
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      i = a.b(b + 10L);
      l = a.a(b + 20L);
      m = a.a(b + 24L);
      e = a.b(b + 28L);
      k = (a.a(b + 28L + 14L) & 0xFFFFFFFF);
      g = new String(a.a(b + 46L, e), "utf-8");
      f = (k + 30L + e);
      j = a.b(k + 28L);
      if (c)
      {
        arrayOfByte1 = a.a(f, 2);
        if ((arrayOfByte1[0] != 1) || (arrayOfByte1[1] != -103)) {
          break;
        }
        d = true;
        n = a.c(f + 8L);
        i = a.b(f + 9L);
      }
      h = (j + 30 + e);
      return;
    }
    if (j == 0) {
      throw new ZipException("extra field is of length 0 - this is probably not a WinZip AES encrypted entry");
    }
    byte[] arrayOfByte2 = a.a(f, j);
    int i2 = arrayOfByte2.length;
    int i1 = 0;
    for (;;)
    {
      if ((i1 >= i2 - 1) || (arrayOfByte2[i1] == 1) || (arrayOfByte2[(i1 + 1)] == -103))
      {
        if (i1 > i2 - 2) {
          break;
        }
        arrayOfByte1[0] = arrayOfByte2[i1];
        arrayOfByte1[1] = arrayOfByte2[(i1 + 1)];
        if ((arrayOfByte1[0] != 1) || (arrayOfByte1[1] != -103)) {
          break;
        }
        d = true;
        n = arrayOfByte2[(i1 + 8)];
        i = f.b(new byte[] { arrayOfByte2[(i1 + 9)], arrayOfByte2[(i1 + 10)] });
        break;
      }
      byte[] arrayOfByte3 = new byte[2];
      System.arraycopy(arrayOfByte2, i1 + 2, arrayOfByte3, 0, arrayOfByte3.length);
      i1 += f.b(arrayOfByte3) + 4;
    }
  }
  
  public int b()
  {
    return l;
  }
  
  public int c()
  {
    return m;
  }
  
  public boolean d()
  {
    return c;
  }
  
  public short e()
  {
    return j;
  }
  
  public long f()
  {
    return k;
  }
  
  protected long g()
  {
    return f;
  }
  
  public long h()
  {
    return f() + k() + l();
  }
  
  public short i()
  {
    return i;
  }
  
  public byte j()
  {
    return n;
  }
  
  public int k()
  {
    return h;
  }
  
  public short l()
  {
    if (d) {
      return 18;
    }
    return 0;
  }
  
  public boolean m()
  {
    return d;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("fileName\t\t = ").append(g).append('\n');
    localStringBuilder.append("uncompressedSize\t = ").append(c()).append('\n');
    localStringBuilder.append("compressedSize\t\t = ").append(b()).append('\n');
    localStringBuilder.append("encryptionStrength\t = ").append(j()).append('\n');
    localStringBuilder.append("extraFieldOffset\t = ").append(g()).append('\n');
    localStringBuilder.append("extraFieldLength\t = ").append(e()).append('\n');
    localStringBuilder.append("localHeaderOffset\t = ").append(f()).append('\n');
    localStringBuilder.append("localHeaderSize\t\t = ").append(k()).append('\n');
    localStringBuilder.append("offset\t\t\t = ").append(h()).append('\n');
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     de.a.a.a.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */