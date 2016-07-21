package com.dianxinos.dxservice.core;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.dianxinos.dxservice.stat.an;
import com.dianxinos.dxservice.stat.e;
import com.dianxinos.dxservice.stat.t;
import com.dianxinos.dxservice.stat.x;

class b
  extends Handler
{
  public b(DXCoreService paramDXCoreService, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      super.handleMessage(paramMessage);
      return;
    case 1: 
      paramMessage = new t(paramMessage.getData());
      DXCoreService.a(a).a(paramMessage, true);
      return;
    case 2: 
      DXCoreService.b(a).c();
      return;
    case 3: 
      DXCoreService.a(a).c();
      return;
    case 5: 
      DXCoreService.a(a).c();
      return;
    }
    DXCoreService.a(a).c();
    DXCoreService.c(a).a();
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.core.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */