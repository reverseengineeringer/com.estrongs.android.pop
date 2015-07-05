package com.estrongs.android.pop.spfs;

import com.estrongs.android.exception.AbstractException;

public class PhotoInfoException
  extends AbstractException
{
  private static final long serialVersionUID = 1L;
  
  public PhotoInfoException() {}
  
  public PhotoInfoException(String paramString)
  {
    super(paramString);
  }
  
  public PhotoInfoException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public PhotoInfoException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.PhotoInfoException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */