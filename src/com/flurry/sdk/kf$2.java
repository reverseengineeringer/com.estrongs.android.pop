package com.flurry.sdk;

import java.util.HashMap;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.DiscardPolicy;

class kf$2
  extends ThreadPoolExecutor.DiscardPolicy
{
  kf$2(kf paramkf) {}
  
  public void rejectedExecution(Runnable arg1, ThreadPoolExecutor paramThreadPoolExecutor)
  {
    super.rejectedExecution(???, paramThreadPoolExecutor);
    paramThreadPoolExecutor = kf.a(a, ???);
    if (paramThreadPoolExecutor == null) {
      return;
    }
    synchronized (kf.a(a))
    {
      kf.a(a).remove(paramThreadPoolExecutor);
      kf.a(a, paramThreadPoolExecutor);
      new kf.2.1(this, paramThreadPoolExecutor).run();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.kf.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */