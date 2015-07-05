package com.dropbox.client2;

public abstract class ProgressListener
{
  public abstract void onProgress(long paramLong1, long paramLong2);
  
  public long progressInterval()
  {
    return 500L;
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.ProgressListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */