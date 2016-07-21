package com.baidu.scenery.dispatcher;

import java.util.LinkedHashMap;
import java.util.Map;

class ExecutorManager
{
  private static ExecutorManager INSTANCE;
  private final Map<String, SceneryExecutor> mExecutors = new LinkedHashMap();
  
  public static ExecutorManager getInstance()
  {
    try
    {
      if (INSTANCE == null) {
        INSTANCE = new ExecutorManager();
      }
      ExecutorManager localExecutorManager = INSTANCE;
      return localExecutorManager;
    }
    finally {}
  }
  
  public void clearExecutors()
  {
    try
    {
      mExecutors.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public SceneryExecutor getExecutor(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokestatic 38	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +9 -> 17
    //   11: aconst_null
    //   12: astore_1
    //   13: aload_0
    //   14: monitorexit
    //   15: aload_1
    //   16: areturn
    //   17: aload_0
    //   18: getfield 18	com/baidu/scenery/dispatcher/ExecutorManager:mExecutors	Ljava/util/Map;
    //   21: aload_1
    //   22: invokeinterface 42 2 0
    //   27: checkcast 44	com/baidu/scenery/dispatcher/SceneryExecutor
    //   30: astore_1
    //   31: goto -18 -> 13
    //   34: astore_1
    //   35: aload_0
    //   36: monitorexit
    //   37: aload_1
    //   38: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	39	0	this	ExecutorManager
    //   0	39	1	paramString	String
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	34	finally
    //   17	31	34	finally
  }
  
  public void replaceExecutors(Map<String, SceneryExecutor> paramMap)
  {
    if (paramMap != null) {}
    try
    {
      if (paramMap.isEmpty()) {
        mExecutors.clear();
      }
      mExecutors.putAll(paramMap);
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.ExecutorManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */