package com.estrongs.fs.impl.media;

import com.estrongs.android.exception.AbstractException;

public class MediaStoreInsertException
  extends AbstractException
{
  private static final long serialVersionUID = 1L;
  
  public MediaStoreInsertException() {}
  
  public MediaStoreInsertException(String paramString)
  {
    super(paramString);
  }
  
  public MediaStoreInsertException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public MediaStoreInsertException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.media.MediaStoreInsertException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */