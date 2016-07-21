package android.support.v7.util;

import android.util.Log;
import java.util.concurrent.atomic.AtomicBoolean;

class MessageThreadUtil$2$1
  implements Runnable
{
  MessageThreadUtil$2$1(MessageThreadUtil.2 param2) {}
  
  public void run()
  {
    for (;;)
    {
      MessageThreadUtil.SyncQueueItem localSyncQueueItem = MessageThreadUtil.2.access$100(this$1).next();
      if (localSyncQueueItem == null)
      {
        this$1.mBackgroundRunning.set(false);
        return;
      }
      switch (what)
      {
      default: 
        Log.e("ThreadUtil", "Unsupported message, what=" + what);
        break;
      case 1: 
        MessageThreadUtil.2.access$100(this$1).removeMessages(1);
        this$1.val$callback.refresh(arg1);
        break;
      case 2: 
        MessageThreadUtil.2.access$100(this$1).removeMessages(2);
        MessageThreadUtil.2.access$100(this$1).removeMessages(3);
        this$1.val$callback.updateRange(arg1, arg2, arg3, arg4, arg5);
        break;
      case 3: 
        this$1.val$callback.loadTile(arg1, arg2);
        break;
      case 4: 
        this$1.val$callback.recycleTile((TileList.Tile)data);
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.util.MessageThreadUtil.2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */