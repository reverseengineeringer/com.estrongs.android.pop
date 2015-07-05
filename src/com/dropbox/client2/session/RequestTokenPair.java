package com.dropbox.client2.session;

import java.io.Serializable;

public final class RequestTokenPair
  extends AccessTokenPair
  implements Serializable
{
  private static final long serialVersionUID = 7933124160414910085L;
  
  public RequestTokenPair(String paramString1, String paramString2)
  {
    super(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.session.RequestTokenPair
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */