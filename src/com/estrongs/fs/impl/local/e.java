package com.estrongs.fs.impl.local;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;

public class e
  extends InputStream
{
  long a = 0L;
  private RandomAccessFile b;
  
  public e(File paramFile, long paramLong)
  {
    try
    {
      b = new RandomAccessFile(paramFile, "r");
      b.seek(paramLong);
      a = paramFile.length();
      return;
    }
    catch (Exception paramFile)
    {
      paramFile.printStackTrace();
      b = null;
    }
  }
  
  public int available()
  {
    if (b == null) {
      return 0;
    }
    try
    {
      long l1 = a;
      long l2 = b.getFilePointer();
      return (int)(l1 - l2);
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return 0;
  }
  
  public void close()
  {
    if (b != null) {}
    try
    {
      b.close();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
  
  public void mark(int paramInt) {}
  
  public boolean markSupported()
  {
    return false;
  }
  
  public int read()
  {
    if (b == null) {
      return -1;
    }
    return b.read();
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    if (b == null) {
      return -1;
    }
    try
    {
      int i = b.read(paramArrayOfByte);
      return i;
    }
    catch (IOException paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
    }
    return -1;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (b == null) {
      return -1;
    }
    try
    {
      paramInt1 = b.read(paramArrayOfByte, paramInt1, paramInt2);
      return paramInt1;
    }
    catch (IOException paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
    }
    return -1;
  }
  
  /* Error */
  public void reset()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 26	com/estrongs/fs/impl/local/e:b	Ljava/io/RandomAccessFile;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull +11 -> 19
    //   11: aload_0
    //   12: getfield 26	com/estrongs/fs/impl/local/e:b	Ljava/io/RandomAccessFile;
    //   15: lconst_0
    //   16: invokevirtual 30	java/io/RandomAccessFile:seek	(J)V
    //   19: aload_0
    //   20: monitorexit
    //   21: return
    //   22: astore_1
    //   23: aload_1
    //   24: invokevirtual 48	java/io/IOException:printStackTrace	()V
    //   27: goto -8 -> 19
    //   30: astore_1
    //   31: aload_0
    //   32: monitorexit
    //   33: aload_1
    //   34: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	35	0	this	e
    //   6	2	1	localRandomAccessFile	RandomAccessFile
    //   22	2	1	localIOException	IOException
    //   30	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   11	19	22	java/io/IOException
    //   2	7	30	finally
    //   11	19	30	finally
    //   23	27	30	finally
  }
  
  public long skip(long paramLong)
  {
    if (b != null) {
      try
      {
        int i = b.skipBytes((int)paramLong);
        return i;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
      }
    }
    return 0L;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.local.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */