package com.dropbox.client2;

import java.io.FilterOutputStream;
import java.io.OutputStream;

class ProgressListener$ProgressHttpEntity$CountingOutputStream
  extends FilterOutputStream
{
  private long intervalMs = 0L;
  private long lastListened = 0L;
  private long transferred = 0L;
  
  public ProgressListener$ProgressHttpEntity$CountingOutputStream(ProgressListener.ProgressHttpEntity paramProgressHttpEntity, OutputStream paramOutputStream)
  {
    super(paramOutputStream);
    intervalMs = ProgressListener.ProgressHttpEntity.access$0(paramProgressHttpEntity).progressInterval();
  }
  
  public void write(int paramInt)
  {
    super.write(paramInt);
    transferred += 1L;
    long l = System.currentTimeMillis();
    if (l - lastListened > intervalMs)
    {
      lastListened = l;
      ProgressListener.ProgressHttpEntity.access$0(this$1).onProgress(transferred, ProgressListener.ProgressHttpEntity.access$1(this$1));
    }
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    out.write(paramArrayOfByte, paramInt1, paramInt2);
    transferred += paramInt2;
    long l = System.currentTimeMillis();
    if (l - lastListened > intervalMs)
    {
      lastListened = l;
      ProgressListener.ProgressHttpEntity.access$0(this$1).onProgress(transferred, ProgressListener.ProgressHttpEntity.access$1(this$1));
    }
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.ProgressListener.ProgressHttpEntity.CountingOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */