package com.estrongs.android.pop.netfs.utils;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.ref.WeakReference;

public class FastPipedOutputStream
  extends OutputStream
{
  static final int TIMEOUT = 1000;
  private final Throwable allocatedAt = new Throwable();
  WeakReference<FastPipedInputStream> sink;
  private long written = 0L;
  
  public FastPipedOutputStream() {}
  
  public FastPipedOutputStream(FastPipedInputStream paramFastPipedInputStream)
  {
    connect(paramFastPipedInputStream);
  }
  
  public FastPipedOutputStream(FastPipedInputStream paramFastPipedInputStream, int paramInt)
  {
    this(paramFastPipedInputStream);
  }
  
  private FastPipedInputStream sink()
  {
    FastPipedInputStream localFastPipedInputStream = (FastPipedInputStream)sink.get();
    if (localFastPipedInputStream == null) {
      throw ((IOException)new IOException("Reader side has already been abandoned").initCause(allocatedAt));
    }
    return localFastPipedInputStream;
  }
  
  public void close()
  {
    if (sink == null) {
      throw new IOException("Unconnected pipe");
    }
    FastPipedInputStream localFastPipedInputStream = sink();
    synchronized (buffer)
    {
      closed = new FastPipedInputStream.ClosedBy();
      flush();
      return;
    }
  }
  
  public void connect(FastPipedInputStream paramFastPipedInputStream)
  {
    if (sink != null) {
      throw new IOException("Pipe already connected");
    }
    sink = new WeakReference(paramFastPipedInputStream);
    source = new WeakReference(this);
  }
  
  public void flush()
  {
    FastPipedInputStream localFastPipedInputStream = sink();
    synchronized (buffer)
    {
      buffer.notifyAll();
      return;
    }
  }
  
  public void write(int paramInt)
  {
    write(new byte[] { (byte)paramInt });
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    write(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (sink == null) {
      throw new IOException("Unconnected pipe");
    }
    while (paramInt2 > 0)
    {
      Object localObject = sink();
      if (closed != null) {
        throw ((IOException)new IOException("Pipe is already closed").initCause(closed));
      }
      synchronized (buffer)
      {
        if ((writePosition == readPosition) && (writeLaps > readLaps))
        {
          localObject = buffer;
          try
          {
            localObject.wait(1000L);
          }
          catch (InterruptedException paramArrayOfByte)
          {
            throw ((InterruptedIOException)new InterruptedIOException(paramArrayOfByte.getMessage()).initCause(paramArrayOfByte));
          }
        }
      }
      if (writePosition < readPosition) {}
      for (int i = readPosition;; i = buffer.length)
      {
        i = Math.min(paramInt2, i - writePosition);
        System.arraycopy(paramArrayOfByte, paramInt1, buffer, writePosition, i);
        writePosition += i;
        if (writePosition == buffer.length)
        {
          writePosition = 0;
          writeLaps += 1;
        }
        paramInt1 += i;
        paramInt2 -= i;
        written += i;
        buffer.notifyAll();
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.netfs.utils.FastPipedOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */