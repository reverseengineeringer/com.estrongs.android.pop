package com.estrongs.android.pop.app.editor;

import com.estrongs.fs.c;
import com.estrongs.fs.impl.local.l;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class ar
  extends a
{
  private File a = null;
  private String b = null;
  private Object c = null;
  
  public ar(File paramFile)
  {
    a = paramFile;
    b = a.getAbsolutePath();
  }
  
  public int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (c == null)
    {
      c = l.i(b);
      if (c == null) {
        throw new IOException("fail to open file.");
      }
    }
    paramInt2 = l.a(c, paramArrayOfByte, paramInt1, paramInt2);
    paramInt1 = paramInt2;
    if (paramInt2 <= 0) {
      paramInt1 = -1;
    }
    return paramInt1;
  }
  
  public long a()
  {
    if (c == null)
    {
      c = l.i(b);
      if (c == null) {
        throw new IOException("fail to open file.");
      }
    }
    return l.a(c, 0L, 1);
  }
  
  public void a(long paramLong)
  {
    if (c == null)
    {
      c = l.i(b);
      if (c == null) {
        throw new IOException("fail to open file.");
      }
    }
    l.a(c, paramLong, 0);
  }
  
  public long b()
  {
    c localc = l.d(b);
    if (localc != null) {
      return e;
    }
    return -1L;
  }
  
  public void c()
  {
    if (c != null)
    {
      l.a(c);
      c = null;
    }
  }
  
  public InputStream d()
  {
    return l.j(b);
  }
  
  public OutputStream e()
  {
    return l.e(b);
  }
  
  public boolean f()
  {
    c localc = l.d(b);
    return (localc != null) && (h > 0L);
  }
  
  public String g()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */