package com.estrongs.android.pop.netfs;

public class NetFsException
  extends Exception
{
  public NetFsException.ERROR_CODE error;
  
  public NetFsException() {}
  
  public NetFsException(String paramString, NetFsException.ERROR_CODE paramERROR_CODE)
  {
    super(paramString);
    error = paramERROR_CODE;
  }
  
  public NetFsException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.netfs.NetFsException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */