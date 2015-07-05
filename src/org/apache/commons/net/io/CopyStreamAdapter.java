package org.apache.commons.net.io;

import java.util.Iterator;
import org.apache.commons.net.util.ListenerList;

public class CopyStreamAdapter
  implements CopyStreamListener
{
  private final ListenerList internalListeners = new ListenerList();
  
  public void addCopyStreamListener(CopyStreamListener paramCopyStreamListener)
  {
    internalListeners.addListener(paramCopyStreamListener);
  }
  
  public void bytesTransferred(long paramLong1, int paramInt, long paramLong2)
  {
    Iterator localIterator = internalListeners.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ((CopyStreamListener)localIterator.next()).bytesTransferred(paramLong1, paramInt, paramLong2);
    }
  }
  
  public void bytesTransferred(CopyStreamEvent paramCopyStreamEvent)
  {
    Iterator localIterator = internalListeners.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ((CopyStreamListener)localIterator.next()).bytesTransferred(paramCopyStreamEvent);
    }
  }
  
  public void removeCopyStreamListener(CopyStreamListener paramCopyStreamListener)
  {
    internalListeners.removeListener(paramCopyStreamListener);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.io.CopyStreamAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */