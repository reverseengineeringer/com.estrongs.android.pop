package com.estrongs.android.pop.netfs.utils;

import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.entity.AbstractHttpEntity;

public class LargeInputStreamEntity
  extends AbstractHttpEntity
{
  private static final int BUFFER_SIZE = 16384;
  private boolean consumed = false;
  private final InputStream content;
  private final long length;
  
  public LargeInputStreamEntity(InputStream paramInputStream, long paramLong)
  {
    if (paramInputStream == null) {
      throw new IllegalArgumentException("Source input stream may not be null");
    }
    content = paramInputStream;
    length = paramLong;
  }
  
  public void consumeContent()
  {
    consumed = true;
    content.close();
  }
  
  public InputStream getContent()
  {
    return content;
  }
  
  public long getContentLength()
  {
    return length;
  }
  
  public boolean isRepeatable()
  {
    return false;
  }
  
  public boolean isStreaming()
  {
    return !consumed;
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    if (paramOutputStream == null) {
      throw new IllegalArgumentException("Output stream may not be null");
    }
    InputStream localInputStream = content;
    byte[] arrayOfByte = new byte['䀀'];
    int i;
    if (length < 0L)
    {
      i = localInputStream.read(arrayOfByte);
      if (i != -1) {}
    }
    label113:
    for (;;)
    {
      consumed = true;
      return;
      paramOutputStream.write(arrayOfByte, 0, i);
      break;
      for (long l = length;; l -= i)
      {
        if (l <= 0L) {
          break label113;
        }
        i = localInputStream.read(arrayOfByte, 0, (int)Math.min(16384L, l));
        if (i == -1) {
          break;
        }
        paramOutputStream.write(arrayOfByte, 0, i);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.netfs.utils.LargeInputStreamEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */