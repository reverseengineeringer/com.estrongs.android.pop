package com.estrongs.android.pop.spfs;

import com.estrongs.android.exception.AbstractException;

public class AlbumException
  extends AbstractException
{
  private static final long serialVersionUID = 1L;
  
  public AlbumException() {}
  
  public AlbumException(String paramString)
  {
    super(paramString);
  }
  
  public AlbumException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public AlbumException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.AlbumException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */