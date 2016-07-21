package com.estrongs.android.pop.app;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.widget.ImageView;
import com.estrongs.android.pop.ac;

class jd
  implements Runnable
{
  jd(PopRemoteImageBrowser paramPopRemoteImageBrowser) {}
  
  public void run()
  {
    int j = 0;
    int i;
    int m;
    if (PopRemoteImageBrowser.i(a) == null)
    {
      PopRemoteImageBrowser.j(a).setImageResource(17301567);
      int k = PopRemoteImageBrowser.i(a).getIntrinsicWidth();
      i = PopRemoteImageBrowser.i(a).getIntrinsicHeight();
      k = (PopRemoteImageBrowser.k(a) - k) / 2;
      m = (PopRemoteImageBrowser.l(a) - i) / 2;
      i = k;
      if (k < 0) {
        i = 0;
      }
      if (m >= 0) {
        break label179;
      }
    }
    for (;;)
    {
      PopRemoteImageBrowser.j(a).setPadding(i, j, i, j);
      if (PopRemoteImageBrowser.m(a) != null)
      {
        Bitmap localBitmap = PopRemoteImageBrowser.m(a).getBitmap();
        if (localBitmap != null) {
          localBitmap.recycle();
        }
        PopRemoteImageBrowser.a(a, null);
      }
      return;
      if (ac.a() < 8) {
        PopRemoteImageBrowser.i(a).setAlpha(0);
      }
      PopRemoteImageBrowser.j(a).setImageDrawable(PopRemoteImageBrowser.i(a));
      break;
      label179:
      j = m;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.jd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */