package com.estrongs.fs.impl.adb;

import com.estrongs.fs.FileSystemException;

public class AdbFsException
  extends FileSystemException
{
  public AdbFsException.ERROR_CODE errorCode = AdbFsException.ERROR_CODE.ADB_ERROR_NONE;
  
  public AdbFsException() {}
  
  public AdbFsException(String paramString, AdbFsException.ERROR_CODE paramERROR_CODE)
  {
    super(paramString);
    errorCode = paramERROR_CODE;
  }
  
  public AdbFsException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public AdbFsException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.adb.AdbFsException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */