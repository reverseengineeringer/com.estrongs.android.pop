package com.estrongs.android.ui.view;

import android.os.Message;
import android.support.v4.view.ViewPager;
import android.support.v4.view.el;
import android.view.View;
import android.widget.LinearLayout;

class bb
  implements el
{
  bb(ba paramba) {}
  
  public void a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 1: 
      ba.b(a).sendEmptyMessage(2);
      return;
    }
    ba.b(a).sendEmptyMessageDelayed(1, 6000L);
  }
  
  public void a(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void b(int paramInt)
  {
    int i = 1;
    if (ba.a(a).getCount() == 0) {}
    for (;;)
    {
      return;
      if (paramInt == 0) {
        i = ba.a(a).getCount() - 2;
      }
      while (i != paramInt)
      {
        ba.e(a).setCurrentItem(i);
        return;
        if (paramInt != ba.a(a).getCount() - 2 + 1)
        {
          ba.b(a).sendMessage(Message.obtain(ba.b(a), 4, paramInt, 0));
          i = paramInt - 1;
          View localView = ba.d(a).getChildAt(ba.c(a));
          ba.a(a, localView, false);
          localView = ba.d(a).getChildAt(i);
          ba.a(a, localView, true);
          ba.a(a, i);
          i = paramInt;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.bb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */