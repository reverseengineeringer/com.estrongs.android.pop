package android.support.v7.util;

class MessageThreadUtil<T>
  implements ThreadUtil<T>
{
  public ThreadUtil.BackgroundCallback<T> getBackgroundProxy(ThreadUtil.BackgroundCallback<T> paramBackgroundCallback)
  {
    return new MessageThreadUtil.2(this, paramBackgroundCallback);
  }
  
  public ThreadUtil.MainThreadCallback<T> getMainThreadProxy(ThreadUtil.MainThreadCallback<T> paramMainThreadCallback)
  {
    return new MessageThreadUtil.1(this, paramMainThreadCallback);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.util.MessageThreadUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */