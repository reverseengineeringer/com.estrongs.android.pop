package com.estrongs.old.fs.impl.sftp;

import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.Session;
import java.io.IOException;
import java.io.OutputStream;

class c
  extends OutputStream
{
  private d a;
  private OutputStream b = null;
  private String c;
  private String d;
  private String e;
  private boolean f = false;
  
  public c(OutputStream paramOutputStream, d paramd, String paramString1, String paramString2, String paramString3)
  {
    b = paramOutputStream;
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
  
  public void flush()
  {
    try
    {
      b.flush();
      return;
    }
    catch (IOException localIOException)
    {
      f = true;
      throw localIOException;
    }
  }
  
  public void write(int paramInt)
  {
    try
    {
      b.write(paramInt);
      return;
    }
    catch (IOException localIOException)
    {
      f = true;
      throw localIOException;
    }
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    try
    {
      b.write(paramArrayOfByte);
      return;
    }
    catch (IOException paramArrayOfByte)
    {
      f = true;
      throw paramArrayOfByte;
    }
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      b.write(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    catch (IOException paramArrayOfByte)
    {
      f = true;
      throw paramArrayOfByte;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.old.fs.impl.sftp.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */