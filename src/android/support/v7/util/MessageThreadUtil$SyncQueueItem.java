package android.support.v7.util;

class MessageThreadUtil$SyncQueueItem
{
  private static SyncQueueItem sPool;
  private static final Object sPoolLock = new Object();
  public int arg1;
  public int arg2;
  public int arg3;
  public int arg4;
  public int arg5;
  public Object data;
  private SyncQueueItem next;
  public int what;
  
  static SyncQueueItem obtainMessage(int paramInt1, int paramInt2, int paramInt3)
  {
    return obtainMessage(paramInt1, paramInt2, paramInt3, 0, 0, 0, null);
  }
  
  static SyncQueueItem obtainMessage(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, Object paramObject)
  {
    synchronized (sPoolLock)
    {
      if (sPool == null)
      {
        localSyncQueueItem = new SyncQueueItem();
        what = paramInt1;
        arg1 = paramInt2;
        arg2 = paramInt3;
        arg3 = paramInt4;
        arg4 = paramInt5;
        arg5 = paramInt6;
        data = paramObject;
        return localSyncQueueItem;
      }
      SyncQueueItem localSyncQueueItem = sPool;
      sPool = sPoolnext;
      next = null;
    }
  }
  
  static SyncQueueItem obtainMessage(int paramInt1, int paramInt2, Object paramObject)
  {
    return obtainMessage(paramInt1, paramInt2, 0, 0, 0, 0, paramObject);
  }
  
  void recycle()
  {
    next = null;
    arg5 = 0;
    arg4 = 0;
    arg3 = 0;
    arg2 = 0;
    arg1 = 0;
    what = 0;
    data = null;
    synchronized (sPoolLock)
    {
      if (sPool != null) {
        next = sPool;
      }
      sPool = this;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.util.MessageThreadUtil.SyncQueueItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */