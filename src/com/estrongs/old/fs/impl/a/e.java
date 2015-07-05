package com.estrongs.old.fs.impl.a;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.net.ftp.FTPClient;

public class e
  extends FilterOutputStream
{
  private final FTPClient a;
  
  public e(OutputStream paramOutputStream, FTPClient paramFTPClient)
  {
    super(paramOutputStream);
    a = paramFTPClient;
  }
  
  public void close()
  {
    super.close();
    if (a != null) {
      if ((a instanceof d)) {
        a).a = true;
      }
    }
    try
    {
      a.completePendingCommand();
      a.logout();
      a.disconnect();
      return;
    }
    catch (IOException localIOException) {}
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    out.write(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.old.fs.impl.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */