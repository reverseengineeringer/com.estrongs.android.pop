package com.estrongs.fs.impl.pcs;

import com.estrongs.android.pop.netfs.NetFsException;

public class PcsFileSystem$PcsFileSystemException
  extends NetFsException
{
  public static final int UNKNOWN_ERROR = -1;
  private static final long serialVersionUID = 1L;
  public int errorCode = -1;
  
  public PcsFileSystem$PcsFileSystemException() {}
  
  public PcsFileSystem$PcsFileSystemException(int paramInt)
  {
    errorCode = paramInt;
  }
  
  public PcsFileSystem$PcsFileSystemException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
  
  public String toString()
  {
    return "error_code: " + errorCode + ", error_msg:" + getMessage();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.pcs.PcsFileSystem.PcsFileSystemException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */