package com.dropbox.client2.session;

import java.io.Serializable;

public abstract class TokenPair
  implements Serializable
{
  private static final long serialVersionUID = -42727403799660313L;
  public final String key;
  public final String secret;
  
  public TokenPair(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      throw new IllegalArgumentException("'key' must be non-null");
    }
    if (paramString1.contains("|")) {
      throw new IllegalArgumentException("'key' must not contain a \"|\" character: \"" + paramString1 + "\"");
    }
    if (paramString2 == null) {
      throw new IllegalArgumentException("'secret' must be non-null");
    }
    key = paramString1;
    secret = paramString2;
  }
  
  public boolean equals(TokenPair paramTokenPair)
  {
    return (key.equals(key)) && (secret.equals(secret));
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof TokenPair)) && (equals((TokenPair)paramObject));
  }
  
  public int hashCode()
  {
    return key.hashCode() ^ secret.hashCode() << 1;
  }
  
  public String toString()
  {
    return "{key=\"" + key + "\", secret=\"" + secret.charAt(0) + "...\"}";
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.session.TokenPair
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */