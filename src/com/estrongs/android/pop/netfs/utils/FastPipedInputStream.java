package com.estrongs.android.pop.netfs.utils;

import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;

public class FastPipedInputStream
  extends InputStream
{
  private final Throwable allocatedAt = new Throwable();
  final byte[] buffer;
  FastPipedInputStream.ClosedBy closed = null;
  int readLaps = 0;
  int readPosition = 0;
  WeakReference<FastPipedOutputStream> source;
  int writeLaps = 0;
  int writePosition = 0;
  
  public FastPipedInputStream()
  {
    buffer = new byte[32768];
  }
  
  public FastPipedInputStream(FastPipedOutputStream paramFastPipedOutputStream)
  {
    this(paramFastPipedOutputStream, 32768);
  }
  
  public FastPipedInputStream(FastPipedOutputStream paramFastPipedOutputStream, int paramInt)
  {
    if (paramFastPipedOutputStream != null) {
      connect(paramFastPipedOutputStream);
    }
    buffer = new byte[paramInt];
  }
  
  private FastPipedOutputStream source()
  {
    FastPipedOutputStream localFastPipedOutputStream = (FastPipedOutputStream)source.get();
    if (localFastPipedOutputStream == null) {
      throw ((IOException)new IOException("Writer side has already been abandoned").initCause(allocatedAt));
    }
    return localFastPipedOutputStream;
  }
  
  public int available()
  {
    for (;;)
    {
      synchronized (buffer)
      {
        if (writePosition > readPosition)
        {
          i = writePosition - readPosition;
          return i;
        }
        if (writePosition < readPosition)
        {
          i = buffer.length - readPosition + 1 + writePosition;
          continue;
        }
        if (writeLaps > readLaps) {
          i = buffer.length;
        }
      }
      int i = 0;
    }
  }
  
  public void close()
  {
    if (source == null) {
      throw new IOException("Unconnected pipe");
    }
    synchronized (buffer)
    {
      closed = new FastPipedInputStream.ClosedBy();
      buffer.notifyAll();
      return;
    }
  }
  
  public void connect(FastPipedOutputStream paramFastPipedOutputStream)
  {
    if (source != null) {
      throw new IOException("Pipe already connected");
    }
    source = new WeakReference(paramFastPipedOutputStream);
    sink = new WeakReference(this);
  }
  
  public void mark(int paramInt) {}
  
  public boolean markSupported()
  {
    return false;
  }
  
  public int read()
  {
    byte[] arrayOfByte = new byte[1];
    if (read(arrayOfByte, 0, arrayOfByte.length) == -1) {
      return -1;
    }
    return arrayOfByte[0] & 0xFF;
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (source == null) {
      throw new IOException("Unconnected pipe");
    }
    byte[] arrayOfByte;
    try
    {
      for (;;)
      {
        source();
        try
        {
          buffer.wait(1000L);
          arrayOfByte = buffer;
          if ((writePosition == readPosition) && (writeLaps == readLaps))
          {
            if (closed == null) {
              continue;
            }
            return -1;
          }
        }
        catch (InterruptedException paramArrayOfByte)
        {
          throw new IOException(paramArrayOfByte.getMessage());
        }
      }
      if (writePosition <= readPosition) {}
    }
    finally {}
    for (int i = writePosition;; i = buffer.length)
    {
      paramInt2 = Math.min(paramInt2, i - readPosition);
      System.arraycopy(buffer, readPosition, paramArrayOfByte, paramInt1, paramInt2);
      readPosition += paramInt2;
      if (readPosition == buffer.length)
      {
        readPosition = 0;
        readLaps += 1;
      }
      buffer.notifyAll();
      return paramInt2;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.netfs.utils.FastPipedInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */