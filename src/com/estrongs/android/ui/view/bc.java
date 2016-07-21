package com.estrongs.android.ui.view;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.support.v4.view.ViewPager;
import java.lang.ref.WeakReference;

class bc
  extends Handler
{
  private WeakReference<Context> b;
  private int c = 0;
  
  protected bc(WeakReference<Context> paramWeakReference)
  {
    WeakReference localWeakReference;
    b = localWeakReference;
  }
  
  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    try
    {
      if ((Context)b.get() == null) {
        return;
      }
      switch (what)
      {
      case 1: 
        if (ba.b(a).hasMessages(1)) {
          ba.b(a).removeMessages(1);
        }
        if (ba.a(a).getCount() != 0)
        {
          c += 1;
          c %= ba.a(a).getCount();
          ba.e(a).setCurrentItem(c);
        }
        ba.b(a).sendEmptyMessageDelayed(1, 6000L);
        return;
      }
    }
    catch (Exception paramMessage)
    {
      paramMessage.printStackTrace();
      return;
    }
    if (ba.b(a).hasMessages(1))
    {
      ba.b(a).removeMessages(1);
      return;
      if (ba.b(a).hasMessages(1)) {
        ba.b(a).removeMessages(1);
      }
      ba.b(a).sendEmptyMessageDelayed(1, 6000L);
      return;
      c = arg1;
    }
    return;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */