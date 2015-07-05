package com.estrongs.io.archive.a;

import com.estrongs.fs.impl.local.h;
import com.estrongs.io.archive.e;
import java.io.BufferedOutputStream;
import java.io.File;
import java.util.zip.GZIPOutputStream;

public class b
  implements e
{
  GZIPOutputStream a;
  File b;
  
  public b(String paramString)
  {
    b = new File(paramString);
    a = new GZIPOutputStream(new BufferedOutputStream(h.f(paramString)));
  }
  
  public void a() {}
  
  public void a(String paramString) {}
  
  public void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a.write(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public void b()
  {
    a.finish();
    a.close();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */