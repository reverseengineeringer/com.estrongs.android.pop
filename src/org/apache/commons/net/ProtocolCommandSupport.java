package org.apache.commons.net;

import java.io.Serializable;
import java.util.Iterator;
import org.apache.commons.net.util.ListenerList;

public class ProtocolCommandSupport
  implements Serializable
{
  private static final long serialVersionUID = -8017692739988399978L;
  private final ListenerList __listeners = new ListenerList();
  private final Object __source;
  
  public ProtocolCommandSupport(Object paramObject)
  {
    __source = paramObject;
  }
  
  public void addProtocolCommandListener(ProtocolCommandListener paramProtocolCommandListener)
  {
    __listeners.addListener(paramProtocolCommandListener);
  }
  
  public void fireCommandSent(String paramString1, String paramString2)
  {
    paramString1 = new ProtocolCommandEvent(__source, paramString1, paramString2);
    paramString2 = __listeners.iterator();
    for (;;)
    {
      if (!paramString2.hasNext()) {
        return;
      }
      ((ProtocolCommandListener)paramString2.next()).protocolCommandSent(paramString1);
    }
  }
  
  public void fireReplyReceived(int paramInt, String paramString)
  {
    paramString = new ProtocolCommandEvent(__source, paramInt, paramString);
    Iterator localIterator = __listeners.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ((ProtocolCommandListener)localIterator.next()).protocolReplyReceived(paramString);
    }
  }
  
  public int getListenerCount()
  {
    return __listeners.getListenerCount();
  }
  
  public void removeProtocolCommandListener(ProtocolCommandListener paramProtocolCommandListener)
  {
    __listeners.removeListener(paramProtocolCommandListener);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ProtocolCommandSupport
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */