package android.support.v7.util;

import android.support.v4.content.w;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

class MessageThreadUtil$2
  implements ThreadUtil.BackgroundCallback<T>
{
  private static final int LOAD_TILE = 3;
  private static final int RECYCLE_TILE = 4;
  private static final int REFRESH = 1;
  private static final int UPDATE_RANGE = 2;
  private Runnable mBackgroundRunnable = new MessageThreadUtil.2.1(this);
  AtomicBoolean mBackgroundRunning = new AtomicBoolean(false);
  private final Executor mExecutor = w.a();
  private final MessageThreadUtil.MessageQueue mQueue = new MessageThreadUtil.MessageQueue();
  
  MessageThreadUtil$2(MessageThreadUtil paramMessageThreadUtil, ThreadUtil.BackgroundCallback paramBackgroundCallback) {}
  
  private void maybeExecuteBackgroundRunnable()
  {
    if (mBackgroundRunning.compareAndSet(false, true)) {
      mExecutor.execute(mBackgroundRunnable);
    }
  }
  
  private void sendMessage(MessageThreadUtil.SyncQueueItem paramSyncQueueItem)
  {
    mQueue.sendMessage(paramSyncQueueItem);
    maybeExecuteBackgroundRunnable();
  }
  
  private void sendMessageAtFrontOfQueue(MessageThreadUtil.SyncQueueItem paramSyncQueueItem)
  {
    mQueue.sendMessageAtFrontOfQueue(paramSyncQueueItem);
    maybeExecuteBackgroundRunnable();
  }
  
  public void loadTile(int paramInt1, int paramInt2)
  {
    sendMessage(MessageThreadUtil.SyncQueueItem.obtainMessage(3, paramInt1, paramInt2));
  }
  
  public void recycleTile(TileList.Tile<T> paramTile)
  {
    sendMessage(MessageThreadUtil.SyncQueueItem.obtainMessage(4, 0, paramTile));
  }
  
  public void refresh(int paramInt)
  {
    sendMessageAtFrontOfQueue(MessageThreadUtil.SyncQueueItem.obtainMessage(1, paramInt, null));
  }
  
  public void updateRange(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    sendMessageAtFrontOfQueue(MessageThreadUtil.SyncQueueItem.obtainMessage(2, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, null));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.util.MessageThreadUtil.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */