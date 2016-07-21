package com.estrongs.android.pop.utils;

import java.util.concurrent.ThreadFactory;

final class cy
  implements ThreadFactory
{
  int a;
  
  cy(int paramInt)
  {
    a = paramInt;
  }
  
  public Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(paramRunnable);
    paramRunnable.setPriority(a);
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.cy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */