package com.dropbox.client2.exception;

public class DropboxException
  extends Exception
{
  private static final long serialVersionUID = 1L;
  
  protected DropboxException() {}
  
  public DropboxException(String paramString)
  {
    super(paramString);
  }
  
  public DropboxException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public DropboxException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.exception.DropboxException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */