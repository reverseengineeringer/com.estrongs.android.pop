package com.dropbox.client2.exception;

public class DropboxProxyChangeException
  extends DropboxIOException
{
  public DropboxProxyChangeException()
  {
    super("Proxy may have been updated, try request again.");
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.exception.DropboxProxyChangeException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */