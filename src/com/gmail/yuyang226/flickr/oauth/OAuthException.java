package com.gmail.yuyang226.flickr.oauth;

import com.gmail.yuyang226.flickr.FlickrException;

public class OAuthException
  extends FlickrException
{
  private static final long serialVersionUID = 1L;
  
  public OAuthException(String paramString)
  {
    super(paramString);
  }
  
  public OAuthException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public OAuthException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.gmail.yuyang226.flickr.oauth.OAuthException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */