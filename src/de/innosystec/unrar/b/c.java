package de.innosystec.unrar.b;

import java.io.File;
import java.io.RandomAccessFile;

public class c
  extends RandomAccessFile
  implements a
{
  static
  {
    if (!c.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public c(File paramFile)
  {
    super(paramFile, "r");
  }
  
  public int a(byte[] paramArrayOfByte, int paramInt)
  {
    if ((!a) && (paramInt <= 0)) {
      throw new AssertionError(paramInt);
    }
    readFully(paramArrayOfByte, 0, paramInt);
    return paramInt;
  }
  
  public long a()
  {
    return getFilePointer();
  }
  
  public void a(long paramLong)
  {
    seek(paramLong);
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */