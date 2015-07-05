package com.estrongs.fs.impl.local;

import android.net.LocalSocket;
import java.io.InputStream;
import java.io.OutputStream;

class t
  extends OutputStream
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
    c.close();
    b.close();
    a.close();
  }
  
  public void flush() {}
  
  public void write(int paramInt)
  {
    c.write(paramInt);
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    c.write(paramArrayOfByte);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    c.write(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.local.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */