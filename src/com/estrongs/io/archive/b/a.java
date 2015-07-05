package com.estrongs.io.archive.b;

import com.estrongs.io.archive.e;
import java.io.OutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class a
  implements e
{
  ZipOutputStream a;
  ZipEntry b = null;
  
  public a(OutputStream paramOutputStream, int paramInt)
  {
    a = new ZipOutputStream(paramOutputStream);
    if (paramInt != -1) {
      a.setLevel(paramInt);
    }
  }
  
  public void a()
  {
    a.closeEntry();
  }
  
  public void a(String paramString)
  {
    paramString = new ZipEntry(paramString);
    a.putNextEntry(paramString);
  }
  
  public void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a.write(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public void b()
  {
    a.close();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */