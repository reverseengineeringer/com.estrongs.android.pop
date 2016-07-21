package com.facebook.ads.internal.view;

import android.os.Handler;
import android.widget.VideoView;
import com.facebook.ads.internal.util.o;

class d$2
  implements Runnable
{
  d$2(d paramd) {}
  
  public void run()
  {
    if (d.b(a).getCurrentPosition() > 3000)
    {
      new o().execute(new String[] { d.c(a) });
      return;
    }
    d.d(a).postDelayed(this, 250L);
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.view.d.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */