package jcifs.smb;

import java.io.IOException;
import jcifs.util.LogStream;

class TransactNamedPipeInputStream
  extends SmbFileInputStream
{
  private static final int INIT_PIPE_SIZE = 4096;
  private int beg_idx;
  private boolean dcePipe;
  Object lock;
  private int nxt_idx;
  private byte[] pipe_buf = new byte['က'];
  private int used;
  
  TransactNamedPipeInputStream(SmbNamedPipe paramSmbNamedPipe)
  {
    super(paramSmbNamedPipe, pipeType & 0xFFFF00FF | 0x20);
    if ((pipeType & 0x600) != 1536) {}
    for (boolean bool = true;; bool = false)
    {
      dcePipe = bool;
      lock = new Object();
      return;
    }
  }
  
  public int available()
  {
    Object localObject = file;
    localObject = SmbFile.log;
    if (LogStream.level >= 3)
    {
      localObject = file;
      SmbFile.log.println("Named Pipe available() does not apply to TRANSACT Named Pipes");
    }
    return 0;
  }
  
  public int dce_read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return super.read(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public int read()
  {
    synchronized (lock)
    {
      try
      {
        while (used == 0)
        {
          lock.wait();
          continue;
          localObject2 = finally;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        throw new IOException(localInterruptedException.getMessage());
      }
    }
    int i = pipe_buf[beg_idx];
    beg_idx = ((beg_idx + 1) % pipe_buf.length);
    return i & 0xFF;
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 <= 0) {
      return 0;
    }
    synchronized (lock)
    {
      try
      {
        while (used == 0)
        {
          lock.wait();
          continue;
          paramArrayOfByte = finally;
        }
      }
      catch (InterruptedException paramArrayOfByte)
      {
        throw new IOException(paramArrayOfByte.getMessage());
      }
    }
    int i = pipe_buf.length - beg_idx;
    if (paramInt2 > used) {
      paramInt2 = used;
    }
    for (;;)
    {
      if ((used > i) && (paramInt2 > i))
      {
        System.arraycopy(pipe_buf, beg_idx, paramArrayOfByte, paramInt1, i);
        System.arraycopy(pipe_buf, 0, paramArrayOfByte, paramInt1 + i, paramInt2 - i);
      }
      for (;;)
      {
        used -= paramInt2;
        beg_idx = ((beg_idx + paramInt2) % pipe_buf.length);
        return paramInt2;
        System.arraycopy(pipe_buf, beg_idx, paramArrayOfByte, paramInt1, paramInt2);
      }
    }
  }
  
  int receive(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i;
    byte[] arrayOfByte;
    if (paramInt2 > pipe_buf.length - used)
    {
      int j = pipe_buf.length * 2;
      i = j;
      if (paramInt2 > j - used) {
        i = used + paramInt2;
      }
      arrayOfByte = pipe_buf;
      pipe_buf = new byte[i];
      i = arrayOfByte.length - beg_idx;
      if (used > i)
      {
        System.arraycopy(arrayOfByte, beg_idx, pipe_buf, 0, i);
        System.arraycopy(arrayOfByte, 0, pipe_buf, i, used - i);
        beg_idx = 0;
        nxt_idx = used;
      }
    }
    else
    {
      i = pipe_buf.length - nxt_idx;
      if (paramInt2 <= i) {
        break label226;
      }
      System.arraycopy(paramArrayOfByte, paramInt1, pipe_buf, nxt_idx, i);
      System.arraycopy(paramArrayOfByte, paramInt1 + i, pipe_buf, 0, paramInt2 - i);
    }
    for (;;)
    {
      nxt_idx = ((nxt_idx + paramInt2) % pipe_buf.length);
      used += paramInt2;
      return paramInt2;
      System.arraycopy(arrayOfByte, beg_idx, pipe_buf, 0, used);
      break;
      label226:
      System.arraycopy(paramArrayOfByte, paramInt1, pipe_buf, nxt_idx, paramInt2);
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.TransactNamedPipeInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */