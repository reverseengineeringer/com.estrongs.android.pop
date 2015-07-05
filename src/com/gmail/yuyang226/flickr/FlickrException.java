package com.gmail.yuyang226.flickr;

public class FlickrException
  extends Exception
{
  private static final long serialVersionUID = 7958091410349084831L;
  private String errorCode;
  private String errorMessage;
  
  public FlickrException(String paramString)
  {
    super(paramString);
  }
  
  public FlickrException(String paramString1, String paramString2)
  {
    super(paramString1 + ": " + paramString2);
    errorCode = paramString1;
    errorMessage = paramString2;
  }
  
  public FlickrException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public FlickrException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
  
  public String getErrorCode()
  {
    return errorCode;
  }
  
  public String getErrorMessage()
  {
    return errorMessage;
  }
}

/* Location:
 * Qualified Name:     com.gmail.yuyang226.flickr.FlickrException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */