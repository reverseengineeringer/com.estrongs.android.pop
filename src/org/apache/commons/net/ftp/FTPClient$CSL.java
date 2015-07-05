package org.apache.commons.net.ftp;

import java.io.IOException;
import java.net.SocketTimeoutException;
import org.apache.commons.net.io.CopyStreamEvent;
import org.apache.commons.net.io.CopyStreamListener;

class FTPClient$CSL
  implements CopyStreamListener
{
  private final int currentSoTimeout;
  private final long idle;
  private int notAcked;
  private final FTPClient parent;
  private long time = System.currentTimeMillis();
  
  FTPClient$CSL(FTPClient paramFTPClient, long paramLong, int paramInt)
  {
    idle = paramLong;
    parent = paramFTPClient;
    currentSoTimeout = paramFTPClient.getSoTimeout();
    paramFTPClient.setSoTimeout(paramInt);
  }
  
  public void bytesTransferred(long paramLong1, int paramInt, long paramLong2)
  {
    paramLong1 = System.currentTimeMillis();
    if (paramLong1 - time > idle) {}
    try
    {
      parent.__noop();
      time = paramLong1;
      return;
    }
    catch (SocketTimeoutException localSocketTimeoutException)
    {
      for (;;)
      {
        notAcked += 1;
      }
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public void bytesTransferred(CopyStreamEvent paramCopyStreamEvent)
  {
    bytesTransferred(paramCopyStreamEvent.getTotalBytesTransferred(), paramCopyStreamEvent.getBytesTransferred(), paramCopyStreamEvent.getStreamSize());
  }
  
  void cleanUp()
  {
    for (;;)
    {
      int i = notAcked;
      notAcked = (i - 1);
      if (i <= 0)
      {
        parent.setSoTimeout(currentSoTimeout);
        return;
      }
      parent.__getReplyNoReport();
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.FTPClient.CSL
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */