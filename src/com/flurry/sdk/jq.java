package com.flurry.sdk;

import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;

public final class jq
  extends kf<kp>
{
  private static jq a = null;
  
  protected jq()
  {
    super(jq.class.getName(), 0, 5, 5000L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(11, new kd()));
  }
  
  public static jq a()
  {
    try
    {
      if (a == null) {
        a = new jq();
      }
      jq localjq = a;
      return localjq;
    }
    finally {}
  }
  
  public static void b()
  {
    try
    {
      if (a != null) {
        a.c();
      }
      a = null;
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.jq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */