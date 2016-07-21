package android.support.v7.util;

import android.util.Log;

class MessageThreadUtil$1$1
  implements Runnable
{
  MessageThreadUtil$1$1(MessageThreadUtil.1 param1) {}
  
  public void run()
  {
    MessageThreadUtil.SyncQueueItem localSyncQueueItem = MessageThreadUtil.1.access$000(this$1).next();
    if (localSyncQueueItem != null)
    {
      switch (what)
      {
      default: 
        Log.e("ThreadUtil", "Unsupported message, what=" + what);
      }
      for (;;)
      {
        localSyncQueueItem = MessageThreadUtil.1.access$000(this$1).next();
        break;
        this$1.val$callback.updateItemCount(arg1, arg2);
        continue;
        this$1.val$callback.addTile(arg1, (TileList.Tile)data);
        continue;
        this$1.val$callback.removeTile(arg1, arg2);
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.util.MessageThreadUtil.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */