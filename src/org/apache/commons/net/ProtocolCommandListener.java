package org.apache.commons.net;

import java.util.EventListener;

public abstract interface ProtocolCommandListener
  extends EventListener
{
  public abstract void protocolCommandSent(ProtocolCommandEvent paramProtocolCommandEvent);
  
  public abstract void protocolReplyReceived(ProtocolCommandEvent paramProtocolCommandEvent);
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ProtocolCommandListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */