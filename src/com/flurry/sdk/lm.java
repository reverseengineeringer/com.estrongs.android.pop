package com.flurry.sdk;

import java.util.concurrent.ThreadFactory;

public class lm
  implements ThreadFactory
{
  private final ThreadGroup a;
  private final int b;
  
  public lm(String paramString, int paramInt)
  {
    a = new ThreadGroup(paramString);
    b = paramInt;
  }
  
  public Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(a, paramRunnable);
    paramRunnable.setName(a.getName() + ":" + paramRunnable.getId());
    paramRunnable.setPriority(b);
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.lm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */