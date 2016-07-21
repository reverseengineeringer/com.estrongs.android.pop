package com.estrongs.fs.impl.u;

import java.io.OutputStream;
import jcifs.smb.SmbFile;
import jcifs.smb.SmbRandomAccessFile;

public class d
  extends OutputStream
{
  private SmbRandomAccessFile a = null;
  
  public d(SmbFile paramSmbFile, long paramLong)
  {
    a = new SmbRandomAccessFile(paramSmbFile, "rw");
    if (paramLong != 0L) {
      a.seek(paramLong);
    }
  }
  
  public void close()
  {
    a.close();
  }
  
  public void flush() {}
  
  public void write(int paramInt)
  {
    a.write(paramInt);
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    a.write(paramArrayOfByte);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a.write(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.u.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */