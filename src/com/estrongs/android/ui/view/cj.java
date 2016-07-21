package com.estrongs.android.ui.view;

import android.os.Handler;
import android.os.Message;

class cj
  extends Handler
{
  cj(ScanProgressView paramScanProgressView) {}
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    }
    long l;
    do
    {
      return;
      l = System.currentTimeMillis() - ScanProgressView.a(a);
      if (l < ScanProgressView.b(a))
      {
        ScanProgressView.a(a, (int)((float)l / ScanProgressView.b(a) * 360.0F));
        ScanProgressView.b(a, (int)((float)l / ScanProgressView.b(a) * -360.0F));
        a.invalidate();
        sendMessage(Message.obtain(paramMessage));
        return;
      }
      a.a();
      return;
      l = System.currentTimeMillis() - ScanProgressView.a(a);
    } while (l >= ScanProgressView.b(a));
    ScanProgressView.c(a, (int)((float)l / ScanProgressView.c(a) * 255.0F));
    a.invalidate();
    sendMessage(Message.obtain(paramMessage));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.cj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */