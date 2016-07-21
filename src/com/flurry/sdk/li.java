package com.flurry.sdk;

import java.util.Timer;

class li
{
  private Timer a;
  private li.a b;
  
  public void a()
  {
    try
    {
      if (a != null)
      {
        a.cancel();
        a = null;
      }
      b = null;
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
      a = new Timer("FlurrySessionTimer");
      b = new li.a(this);
      a.schedule(b, paramLong);
      return;
    }
    finally {}
  }
  
  public boolean b()
  {
    return a != null;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.li
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */