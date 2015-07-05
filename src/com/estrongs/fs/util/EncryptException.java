package com.estrongs.fs.util;

import com.estrongs.android.exception.AbstractException;

public class EncryptException
  extends AbstractException
{
  private static final long serialVersionUID = -6808700264491973557L;
  
  public EncryptException() {}
  
  public EncryptException(String paramString)
  {
    super(paramString);
  }
  
  public EncryptException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public EncryptException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.util.EncryptException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */