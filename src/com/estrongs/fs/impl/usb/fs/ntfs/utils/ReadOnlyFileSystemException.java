package com.estrongs.fs.impl.usb.fs.ntfs.utils;

import java.io.IOException;

public class ReadOnlyFileSystemException
  extends IOException
{
  public ReadOnlyFileSystemException()
  {
    super("The file system is flagged as read-only. No modifications allowed.");
  }
  
  public ReadOnlyFileSystemException(String paramString)
  {
    super(paramString);
  }
  
  public ReadOnlyFileSystemException(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    initCause(paramThrowable);
  }
  
  public ReadOnlyFileSystemException(Throwable paramThrowable)
  {
    initCause(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.utils.ReadOnlyFileSystemException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */