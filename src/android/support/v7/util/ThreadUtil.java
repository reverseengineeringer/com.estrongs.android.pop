package android.support.v7.util;

abstract interface ThreadUtil<T>
{
  public abstract ThreadUtil.BackgroundCallback<T> getBackgroundProxy(ThreadUtil.BackgroundCallback<T> paramBackgroundCallback);
  
  public abstract ThreadUtil.MainThreadCallback<T> getMainThreadProxy(ThreadUtil.MainThreadCallback<T> paramMainThreadCallback);
}

/* Location:
 * Qualified Name:     android.support.v7.util.ThreadUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */