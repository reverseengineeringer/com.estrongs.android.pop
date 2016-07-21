package com.dianxinos.library.notify.network;

import java.util.concurrent.ThreadFactory;

class r
  implements ThreadFactory
{
  int a = 0;
  
  r(o paramo, String paramString, boolean paramBoolean) {}
  
  public Thread newThread(Runnable paramRunnable)
  {
    a += 1;
    paramRunnable = new Thread(paramRunnable, b + "-" + a);
    paramRunnable.setDaemon(false);
    if (c)
    {
      paramRunnable.setPriority(6);
      return paramRunnable;
    }
    paramRunnable.setPriority(3);
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.network.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */