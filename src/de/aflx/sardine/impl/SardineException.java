package de.aflx.sardine.impl;

import org.apache.http.client.HttpResponseException;

public class SardineException
  extends HttpResponseException
{
  private static final long serialVersionUID = -3900043433469104564L;
  private String responsePhrase;
  
  public SardineException(String paramString1, int paramInt, String paramString2)
  {
    super(paramInt, paramString1);
    responsePhrase = paramString2;
  }
  
  public String getResponsePhrase()
  {
    return responsePhrase;
  }
  
  public String toString()
  {
    return super.toString() + " (" + getStatusCode() + " " + responsePhrase + ")";
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.impl.SardineException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */