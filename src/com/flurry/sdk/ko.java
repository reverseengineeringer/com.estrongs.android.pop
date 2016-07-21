package com.flurry.sdk;

import java.util.Timer;

public class ko
{
  private static final String a = ko.class.getSimpleName();
  private Timer b;
  private ko.a c;
  private kp d;
  
  public ko(kp paramkp)
  {
    d = paramkp;
  }
  
  public void a()
  {
    try
    {
      if (b != null)
      {
        b.cancel();
        b = null;
        kg.a(3, a, "HttpRequestTimeoutTimer stopped.");
      }
      c = null;
      return;
    }
    finally {}
  }
  
  public void a(long paramLong)
  {
    try
    {
      if (b()) {
        a();
      }
      b = new Timer("HttpRequestTimeoutTimer");
      c = new ko.a(this, null);
      b.schedule(c, paramLong);
      kg.a(3, a, "HttpRequestTimeoutTimer started: " + paramLong + "MS");
      return;
    }
    finally {}
  }
  
  public boolean b()
  {
    return b != null;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ko
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */