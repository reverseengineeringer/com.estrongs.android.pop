package com.estrongs.old.fs.impl.sftp;

import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.Session;
import java.io.IOException;
import java.io.InputStream;

class b
  extends InputStream
{
  private d a;
  private InputStream b = null;
  private String c;
  private String d;
  private String e;
  private boolean f = false;
  
  public b(InputStream paramInputStream, d paramd, String paramString1, String paramString2, String paramString3)
  {
    b = paramInputStream;
    a = paramd;
    c = paramString1;
    d = paramString2;
    e = paramString3;
  }
  
  public void close()
  {
    try
    {
      b.close();
      if (!f)
      {
        OldSFtpFileSystem.a(c, d, e, a);
        return;
      }
      a.b.h();
      a.a.b();
      return;
    }
    catch (IOException localIOException)
    {
      a.b.h();
      a.a.b();
      throw localIOException;
    }
  }
  
  public int read()
  {
    try
    {
      int i = b.read();
      return i;
    }
    catch (IOException localIOException)
    {
      f = true;
      throw localIOException;
    }
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    try
    {
      int i = b.read(paramArrayOfByte);
      return i;
    }
    catch (IOException paramArrayOfByte)
    {
      f = true;
      throw paramArrayOfByte;
    }
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      paramInt1 = b.read(paramArrayOfByte, paramInt1, paramInt2);
      return paramInt1;
    }
    catch (IOException paramArrayOfByte)
    {
      f = true;
      throw paramArrayOfByte;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.old.fs.impl.sftp.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */