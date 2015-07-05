package com.dropbox.client2.exception;

import javax.net.ssl.SSLException;

public class DropboxSSLException
  extends DropboxIOException
{
  private static final long serialVersionUID = 1L;
  
  public DropboxSSLException(SSLException paramSSLException)
  {
    super(paramSSLException);
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.exception.DropboxSSLException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */