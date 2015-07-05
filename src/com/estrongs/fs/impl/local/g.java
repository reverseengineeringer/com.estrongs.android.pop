package com.estrongs.fs.impl.local;

import java.io.File;
import java.io.OutputStream;
import java.io.RandomAccessFile;

public class g
  extends OutputStream
{
  private RandomAccessFile a;
  
  public g(File paramFile, long paramLong)
  {
    a = new RandomAccessFile(paramFile, "rw");
    a.seek(paramLong);
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
 * Qualified Name:     com.estrongs.fs.impl.local.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */