package com.estrongs.fs.impl.local;

import com.estrongs.fs.FileSystemException;

public class NativeException
  extends FileSystemException
{
  private static final long serialVersionUID = 2L;
  
  public NativeException() {}
  
  public NativeException(String paramString)
  {
    super(paramString);
  }
  
  public NativeException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public NativeException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.local.NativeException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */