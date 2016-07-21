package com.duapps.ad.inmobi;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;

class j
  extends Handler
{
  j(i parami, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    if (what == 100)
    {
      int i = 1;
      while (i <= 3)
      {
        paramMessage = new n(i.a(a));
        b = (i - 1);
        i.b(a).add(paramMessage);
        i += 1;
      }
      if (i.c(a)) {
        i.a(a, (n)i.b(a).get(0));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.inmobi.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */