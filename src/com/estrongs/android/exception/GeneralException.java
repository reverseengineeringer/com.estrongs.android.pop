package com.estrongs.android.exception;

import com.estrongs.fs.FileSystemException;

public class GeneralException
  extends FileSystemException
{
  public GeneralException.ERROR_CODE errorCode = GeneralException.ERROR_CODE.ERROR_NONE;
  
  public GeneralException() {}
  
  public GeneralException(GeneralException.ERROR_CODE paramERROR_CODE)
  {
    errorCode = paramERROR_CODE;
  }
  
  public GeneralException(String paramString, GeneralException.ERROR_CODE paramERROR_CODE)
  {
    super(paramString);
    errorCode = paramERROR_CODE;
  }
  
  public GeneralException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public GeneralException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.exception.GeneralException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */