package com.dropbox.client2.exception;

import java.io.IOException;

public class DropboxIOException
  extends DropboxException
{
  private static final long serialVersionUID = 2L;
  
  public DropboxIOException(IOException paramIOException)
  {
    super(paramIOException);
  }
  
  public DropboxIOException(String paramString)
  {
    super(paramString);
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.exception.DropboxIOException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */