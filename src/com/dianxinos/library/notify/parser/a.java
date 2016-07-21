package com.dianxinos.library.notify.parser;

import com.dianxinos.library.dxbase.e;

public class a
{
  static final NotifyStrategy a;
  
  static
  {
    long l = 28800000L;
    a = new NotifyStrategy();
    NotifyStrategy localNotifyStrategy = a;
    enableDebug = false;
    fetchPeroid2G = 28800000L;
    fetchPeroid3G = 28800000L;
    fetchPeroidWifi = 3600000L;
    fetchPeroidDefault = 28800000L;
    schedulePeroid = 1800000L;
    if (e.b) {
      l = 60000L;
    }
    showGap = l;
  }
  
  public static NotifyStrategy a()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.parser.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */