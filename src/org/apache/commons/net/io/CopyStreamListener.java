package org.apache.commons.net.io;

import java.util.EventListener;

public abstract interface CopyStreamListener
  extends EventListener
{
  public abstract void bytesTransferred(long paramLong1, int paramInt, long paramLong2);
  
  public abstract void bytesTransferred(CopyStreamEvent paramCopyStreamEvent);
}

/* Location:
 * Qualified Name:     org.apache.commons.net.io.CopyStreamListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */