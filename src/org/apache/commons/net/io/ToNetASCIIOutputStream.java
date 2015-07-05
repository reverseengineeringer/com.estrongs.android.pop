package org.apache.commons.net.io;

import java.io.FilterOutputStream;
import java.io.OutputStream;

public final class ToNetASCIIOutputStream
  extends FilterOutputStream
{
  private boolean __lastWasCR = false;
  
  public ToNetASCIIOutputStream(OutputStream paramOutputStream)
  {
    super(paramOutputStream);
  }
  
  public void write(int paramInt)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      try
      {
        __lastWasCR = false;
        out.write(paramInt);
        return;
      }
      finally {}
      __lastWasCR = true;
      out.write(13);
      continue;
      if (!__lastWasCR) {
        out.write(13);
      }
    }
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    try
    {
      write(paramArrayOfByte, 0, paramArrayOfByte.length);
      return;
    }
    finally
    {
      paramArrayOfByte = finally;
      throw paramArrayOfByte;
    }
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    for (;;)
    {
      if (paramInt2 <= 0) {
        return;
      }
      try
      {
        write(paramArrayOfByte[paramInt1]);
        paramInt2 -= 1;
        paramInt1 += 1;
      }
      finally {}
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.io.ToNetASCIIOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */