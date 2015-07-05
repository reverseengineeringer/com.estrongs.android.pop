package org.apache.commons.net.io;

import java.util.EventObject;

public class CopyStreamEvent
  extends EventObject
{
  public static final long UNKNOWN_STREAM_SIZE = -1L;
  private static final long serialVersionUID = -964927635655051867L;
  private final int bytesTransferred;
  private final long streamSize;
  private final long totalBytesTransferred;
  
  public CopyStreamEvent(Object paramObject, long paramLong1, int paramInt, long paramLong2)
  {
    super(paramObject);
    bytesTransferred = paramInt;
    totalBytesTransferred = paramLong1;
    streamSize = paramLong2;
  }
  
  public int getBytesTransferred()
  {
    return bytesTransferred;
  }
  
  public long getStreamSize()
  {
    return streamSize;
  }
  
  public long getTotalBytesTransferred()
  {
    return totalBytesTransferred;
  }
  
  public String toString()
  {
    return getClass().getName() + "[source=" + source + ", total=" + totalBytesTransferred + ", bytes=" + bytesTransferred + ", size=" + streamSize + "]";
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.io.CopyStreamEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */