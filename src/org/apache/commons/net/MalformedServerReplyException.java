package org.apache.commons.net;

import java.io.IOException;

public class MalformedServerReplyException
  extends IOException
{
  private static final long serialVersionUID = 6006765264250543945L;
  
  public MalformedServerReplyException() {}
  
  public MalformedServerReplyException(String paramString)
  {
    super(paramString);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.MalformedServerReplyException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */