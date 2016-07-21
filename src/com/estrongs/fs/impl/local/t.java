package com.estrongs.fs.impl.local;

import android.net.LocalSocket;
import java.io.InputStream;
import java.io.OutputStream;

class t
  extends InputStream
{
  private LocalSocket a = null;
  private InputStream b = null;
  private OutputStream c = null;
  
  public t(LocalSocket paramLocalSocket, InputStream paramInputStream, OutputStream paramOutputStream)
  {
    a = paramLocalSocket;
    b = paramInputStream;
    c = paramOutputStream;
  }
  
  public void close()
  {
    b.close();
    c.close();
    a.close();
  }
  
  public int read()
  {
    return b.read();
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return b.read(paramArrayOfByte);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return b.read(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.local.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */