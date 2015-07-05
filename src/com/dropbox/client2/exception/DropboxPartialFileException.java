package com.dropbox.client2.exception;

public class DropboxPartialFileException
  extends DropboxException
{
  private static final long serialVersionUID = 2L;
  public final long bytesTransferred;
  
  public DropboxPartialFileException(long paramLong)
  {
    bytesTransferred = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.exception.DropboxPartialFileException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */