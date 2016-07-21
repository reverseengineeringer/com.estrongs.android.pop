package com.estrongs.android.pop.app.editor;

import com.estrongs.android.pop.ac;
import com.estrongs.android.util.ap;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;

public class d
  extends a
{
  private File a = null;
  private RandomAccessFile b = null;
  
  public d(File paramFile, String paramString)
  {
    a = paramFile;
    if (paramString != null) {}
    for (;;)
    {
      try
      {
        b = new RandomAccessFile(paramFile, paramString);
        return;
      }
      catch (FileNotFoundException paramFile)
      {
        paramFile.printStackTrace();
        return;
      }
      if (((a.exists()) && (!a.canWrite())) || ((ac.a() >= 21) && (ap.bJ(paramFile.getAbsolutePath())))) {
        paramString = "r";
      } else {
        paramString = "rw";
      }
    }
  }
  
  public int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (b == null) {
      throw new IOException("fail to open file.");
    }
    return b.read(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public long a()
  {
    if (b == null) {
      throw new IOException("fail to open file.");
    }
    return b.getFilePointer();
  }
  
  public void a(long paramLong)
  {
    if (b == null) {
      throw new IOException("fail to open file.");
    }
    b.seek(paramLong);
  }
  
  public long b()
  {
    long l = a.length();
    if ((l == 0L) && (b == null)) {
      throw new IOException("fail to open file.");
    }
    return l;
  }
  
  public void c()
  {
    if (b == null) {
      return;
    }
    b.close();
  }
  
  public InputStream d()
  {
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(a);
      return localFileInputStream;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      localFileNotFoundException.printStackTrace();
    }
    return null;
  }
  
  public OutputStream e()
  {
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(a);
      return localFileOutputStream;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      localFileNotFoundException.printStackTrace();
    }
    return null;
  }
  
  public boolean f()
  {
    return a.exists();
  }
  
  public String g()
  {
    return a.getAbsolutePath();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */