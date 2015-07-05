package com.dropbox.client2.session;

import java.io.Serializable;

public class AccessTokenPair
  extends TokenPair
  implements Serializable
{
  private static final long serialVersionUID = -5526503075188547139L;
  
  public AccessTokenPair(String paramString1, String paramString2)
  {
    super(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.session.AccessTokenPair
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */