package com.estrongs.android.pop.app.imageviewer;

import android.os.Handler;
import android.os.Message;

class p
  extends Handler
{
  public void a()
  {
    removeMessages(1);
  }
  
  public void a(Runnable paramRunnable)
  {
    a(paramRunnable, 0L);
  }
  
  public void a(Runnable paramRunnable, long paramLong)
  {
    if (paramRunnable == null) {
      throw new NullPointerException();
    }
    Message localMessage = Message.obtain();
    what = 1;
    obj = paramRunnable;
    sendMessageDelayed(localMessage, paramLong);
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      return;
    }
    ((Runnable)obj).run();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */