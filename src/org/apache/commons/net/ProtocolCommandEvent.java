package org.apache.commons.net;

import java.util.EventObject;

public class ProtocolCommandEvent
  extends EventObject
{
  private static final long serialVersionUID = 403743538418947240L;
  private final String __command;
  private final boolean __isCommand;
  private final String __message;
  private final int __replyCode;
  
  public ProtocolCommandEvent(Object paramObject, int paramInt, String paramString)
  {
    super(paramObject);
    __replyCode = paramInt;
    __message = paramString;
    __isCommand = false;
    __command = null;
  }
  
  public ProtocolCommandEvent(Object paramObject, String paramString1, String paramString2)
  {
    super(paramObject);
    __replyCode = 0;
    __message = paramString2;
    __isCommand = true;
    __command = paramString1;
  }
  
  public String getCommand()
  {
    return __command;
  }
  
  public String getMessage()
  {
    return __message;
  }
  
  public int getReplyCode()
  {
    return __replyCode;
  }
  
  public boolean isCommand()
  {
    return __isCommand;
  }
  
  public boolean isReply()
  {
    return !isCommand();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ProtocolCommandEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */