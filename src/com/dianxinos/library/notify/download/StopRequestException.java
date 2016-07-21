package com.dianxinos.library.notify.download;

class StopRequestException
  extends Exception
{
  private static final long serialVersionUID = -8528188079963768115L;
  public int mFinalStatus;
  
  public StopRequestException(int paramInt, String paramString)
  {
    super(paramString);
    mFinalStatus = paramInt;
  }
  
  public StopRequestException(int paramInt, String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
    mFinalStatus = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.download.StopRequestException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */