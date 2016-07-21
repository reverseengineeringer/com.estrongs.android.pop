package com.estrongs.android.util;

public abstract interface af
{
  public abstract void downloadCompleted(Object paramObject);
  
  public abstract void downloadError(Object paramObject, Throwable paramThrowable);
  
  public abstract void downloadProgress(Object paramObject, long paramLong1, long paramLong2);
  
  public abstract void downloadStarted(Object paramObject);
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */