package com.estrongs.android.pop.netfs.utils;

public abstract interface HttpUploader$HttpUploadListener
{
  public abstract void uploadCompleted(Object paramObject);
  
  public abstract void uploadError(Object paramObject, Throwable paramThrowable);
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.netfs.utils.HttpUploader.HttpUploadListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */