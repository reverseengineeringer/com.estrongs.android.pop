package com.dianxinos.lockscreen.ui;

import android.os.Handler;
import android.os.Message;

class k
  extends Handler
{
  k(DxDigitalTimeDisplay paramDxDigitalTimeDisplay) {}
  
  public void handleMessage(Message paramMessage)
  {
    if (what == 1)
    {
      DxDigitalTimeDisplay.a(a, DxDigitalTimeDisplay.a(a, DxDigitalTimeDisplay.a(a), DxDigitalTimeDisplay.b(a)));
      DxDigitalTimeDisplay.b(a, DxDigitalTimeDisplay.b(a, DxDigitalTimeDisplay.c(a), DxDigitalTimeDisplay.d(a)));
      DxDigitalTimeDisplay.e(a);
      if ((DxDigitalTimeDisplay.a(a) == DxDigitalTimeDisplay.b(a)) && (DxDigitalTimeDisplay.c(a) == DxDigitalTimeDisplay.d(a))) {
        removeMessages(1);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */