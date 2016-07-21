package com.dianxinos.library.notify.network;

import java.util.concurrent.ThreadFactory;

final class x
  implements ThreadFactory
{
  int a = 0;
  
  public Thread newThread(Runnable paramRunnable)
  {
    a += 1;
    paramRunnable = new Thread(paramRunnable, "generic-pool-" + a);
    paramRunnable.setDaemon(false);
    paramRunnable.setPriority(3);
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.network.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */