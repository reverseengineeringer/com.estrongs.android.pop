package android.support.v7.util;

class MessageThreadUtil$MessageQueue
{
  private MessageThreadUtil.SyncQueueItem mRoot;
  
  /* Error */
  MessageThreadUtil.SyncQueueItem next()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 15	android/support/v7/util/MessageThreadUtil$MessageQueue:mRoot	Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnonnull +9 -> 17
    //   11: aconst_null
    //   12: astore_1
    //   13: aload_0
    //   14: monitorexit
    //   15: aload_1
    //   16: areturn
    //   17: aload_0
    //   18: getfield 15	android/support/v7/util/MessageThreadUtil$MessageQueue:mRoot	Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   21: astore_1
    //   22: aload_0
    //   23: aload_0
    //   24: getfield 15	android/support/v7/util/MessageThreadUtil$MessageQueue:mRoot	Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   27: invokestatic 21	android/support/v7/util/MessageThreadUtil$SyncQueueItem:access$200	(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   30: putfield 15	android/support/v7/util/MessageThreadUtil$MessageQueue:mRoot	Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   33: goto -20 -> 13
    //   36: astore_1
    //   37: aload_0
    //   38: monitorexit
    //   39: aload_1
    //   40: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	41	0	this	MessageQueue
    //   6	16	1	localSyncQueueItem	MessageThreadUtil.SyncQueueItem
    //   36	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	36	finally
    //   17	33	36	finally
  }
  
  void removeMessages(int paramInt)
  {
    try
    {
      while ((mRoot != null) && (mRoot.what == paramInt))
      {
        MessageThreadUtil.SyncQueueItem localSyncQueueItem1 = mRoot;
        mRoot = MessageThreadUtil.SyncQueueItem.access$200(mRoot);
        localSyncQueueItem1.recycle();
      }
      if (mRoot == null) {
        break label105;
      }
    }
    finally {}
    Object localObject3 = mRoot;
    Object localObject2 = MessageThreadUtil.SyncQueueItem.access$200((MessageThreadUtil.SyncQueueItem)localObject3);
    if (localObject2 != null)
    {
      MessageThreadUtil.SyncQueueItem localSyncQueueItem2 = MessageThreadUtil.SyncQueueItem.access$200((MessageThreadUtil.SyncQueueItem)localObject2);
      if (what == paramInt)
      {
        MessageThreadUtil.SyncQueueItem.access$202((MessageThreadUtil.SyncQueueItem)localObject3, localSyncQueueItem2);
        ((MessageThreadUtil.SyncQueueItem)localObject2).recycle();
      }
      for (;;)
      {
        localObject2 = localSyncQueueItem2;
        break;
        localObject3 = localObject2;
      }
    }
    label105:
  }
  
  /* Error */
  void sendMessage(MessageThreadUtil.SyncQueueItem paramSyncQueueItem)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 15	android/support/v7/util/MessageThreadUtil$MessageQueue:mRoot	Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   6: ifnonnull +11 -> 17
    //   9: aload_0
    //   10: aload_1
    //   11: putfield 15	android/support/v7/util/MessageThreadUtil$MessageQueue:mRoot	Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: getfield 15	android/support/v7/util/MessageThreadUtil$MessageQueue:mRoot	Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   21: astore_2
    //   22: aload_2
    //   23: invokestatic 21	android/support/v7/util/MessageThreadUtil$SyncQueueItem:access$200	(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   26: ifnull +11 -> 37
    //   29: aload_2
    //   30: invokestatic 21	android/support/v7/util/MessageThreadUtil$SyncQueueItem:access$200	(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   33: astore_2
    //   34: goto -12 -> 22
    //   37: aload_2
    //   38: aload_1
    //   39: invokestatic 34	android/support/v7/util/MessageThreadUtil$SyncQueueItem:access$202	(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    //   42: pop
    //   43: goto -29 -> 14
    //   46: astore_1
    //   47: aload_0
    //   48: monitorexit
    //   49: aload_1
    //   50: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	51	0	this	MessageQueue
    //   0	51	1	paramSyncQueueItem	MessageThreadUtil.SyncQueueItem
    //   21	17	2	localSyncQueueItem	MessageThreadUtil.SyncQueueItem
    // Exception table:
    //   from	to	target	type
    //   2	14	46	finally
    //   17	22	46	finally
    //   22	34	46	finally
    //   37	43	46	finally
  }
  
  void sendMessageAtFrontOfQueue(MessageThreadUtil.SyncQueueItem paramSyncQueueItem)
  {
    try
    {
      MessageThreadUtil.SyncQueueItem.access$202(paramSyncQueueItem, mRoot);
      mRoot = paramSyncQueueItem;
      return;
    }
    finally
    {
      paramSyncQueueItem = finally;
      throw paramSyncQueueItem;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.util.MessageThreadUtil.MessageQueue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */