package de.a.a.a.a;

import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;

public class j
  extends OutputStream
{
  protected String a;
  protected OutputStream b;
  protected int c;
  private List<i> d = new ArrayList();
  
  public j(OutputStream paramOutputStream)
  {
    b = paramOutputStream;
  }
  
  private static byte[] a(String paramString)
  {
    int k = 0;
    paramString = paramString.toCharArray();
    int m = paramString.length;
    int j = 0;
    int i = 0;
    byte[] arrayOfByte;
    if (j >= m)
    {
      arrayOfByte = new byte[i];
      i = 0;
      j = k;
      if (j >= m) {
        return arrayOfByte;
      }
    }
    else
    {
      n = paramString[j];
      if (n <= 127) {
        i += 1;
      }
      for (;;)
      {
        j += 1;
        break;
        if (n <= 2047) {
          i += 2;
        } else {
          i += 3;
        }
      }
    }
    int n = paramString[j];
    if (n <= 127)
    {
      k = i + 1;
      arrayOfByte[i] = ((byte)n);
      i = k;
    }
    for (;;)
    {
      j += 1;
      break;
      if (n <= 2047)
      {
        k = i + 1;
        arrayOfByte[i] = ((byte)(n >> 6 | 0xC0));
        i = k + 1;
        arrayOfByte[k] = ((byte)(n & 0x3F | 0x80));
      }
      else
      {
        k = i + 1;
        arrayOfByte[i] = ((byte)(n >> 12 | 0xE0));
        int i1 = k + 1;
        arrayOfByte[k] = ((byte)(n >> 6 & 0x3F | 0x80));
        i = i1 + 1;
        arrayOfByte[i1] = ((byte)(n & 0x3F | 0x80));
      }
    }
  }
  
  public void a()
  {
    int i = c;
    int j = c;
    Object localObject = d.iterator();
    if (!((Iterator)localObject).hasNext())
    {
      int k = c;
      a(101010256L);
      a(0);
      a(0);
      a(d.size());
      a(d.size());
      a(k - j);
      a(i);
      if (a == null) {
        break label153;
      }
    }
    label153:
    for (localObject = a.getBytes();; localObject = new byte[0])
    {
      a(localObject.length);
      if (localObject.length > 0) {
        write((byte[])localObject);
      }
      b.close();
      return;
      c((i)((Iterator)localObject).next());
      break;
    }
  }
  
  public void a(int paramInt)
  {
    b.write(paramInt >>> 0 & 0xFF);
    b.write(paramInt >>> 8 & 0xFF);
    c += 2;
  }
  
  public void a(long paramLong)
  {
    b.write((int)(paramLong >>> 0 & 0xFF));
    b.write((int)(paramLong >>> 8 & 0xFF));
    b.write((int)(paramLong >>> 16 & 0xFF));
    b.write((int)(paramLong >>> 24 & 0xFF));
    c += 4;
  }
  
  public void a(i parami)
  {
    a(134695760L);
    a(parami.getCrc());
    a(parami.getCompressedSize());
    a(parami.getSize());
  }
  
  protected void a(ZipEntry paramZipEntry)
  {
    paramZipEntry = paramZipEntry.getExtra();
    if (paramZipEntry != null) {
      write(paramZipEntry);
    }
  }
  
  protected void b(i parami)
  {
    a(20);
    a(parami.b());
    a(parami.f());
    a(parami.h());
    a(parami.getCrc());
    a((int)parami.getCompressedSize());
    a((int)parami.getSize());
    a(a(parami.getName()).length);
    if (parami.getExtra() != null)
    {
      a(parami.getExtra().length);
      return;
    }
    a(0);
  }
  
  protected void c(i parami)
  {
    a(33639248L);
    a(20);
    b(parami);
    a(0);
    a(0);
    a(0);
    a(0L);
    a(parami.e());
    write(a(parami.getName()));
    a(parami);
  }
  
  public void close()
  {
    b.close();
  }
  
  public void d(i parami)
  {
    d.add(parami);
    parami.a(c);
    a(67324752L);
    b(parami);
    write(a(parami.getName()));
    a(parami);
  }
  
  public void flush()
  {
    b.flush();
  }
  
  public void write(int paramInt)
  {
    a(paramInt);
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    b.write(paramArrayOfByte);
    c += paramArrayOfByte.length;
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    b.write(paramArrayOfByte, paramInt1, paramInt2);
    c += paramInt2;
  }
}

/* Location:
 * Qualified Name:     de.a.a.a.a.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */