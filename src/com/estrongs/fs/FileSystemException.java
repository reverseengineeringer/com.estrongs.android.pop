package com.estrongs.fs;

import com.estrongs.android.exception.AbstractException;

public class FileSystemException
  extends AbstractException
{
  private static final long serialVersionUID = 1L;
  
  public FileSystemException() {}
  
  public FileSystemException(String paramString)
  {
    super(paramString);
  }
  
  public FileSystemException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public FileSystemException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.FileSystemException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */