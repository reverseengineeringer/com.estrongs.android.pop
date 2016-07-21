package com.estrongs.android.pop.app;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.view.Window;
import com.estrongs.android.ui.d.g;

class fs
  implements Runnable
{
  fs(PopAudioPlayer paramPopAudioPlayer) {}
  
  public void run()
  {
    int k;
    int i;
    try
    {
      if (PopAudioPlayer.p(a) != null)
      {
        PopAudioPlayer.p(a).recycle();
        PopAudioPlayer.a(a, null);
      }
      k = PopAudioPlayer.q(a).getWidth();
      i = PopAudioPlayer.q(a).getHeight();
      if (i * k == 0) {
        return;
      }
      j = PopAudioPlayer.r(a).getWidth();
      m = PopAudioPlayer.r(a).getHeight();
      if (k / i > j / m)
      {
        j = i * j / m;
        Bitmap localBitmap1 = Bitmap.createBitmap(PopAudioPlayer.q(a), (k - j) / 2, 0, j, i);
        localBitmap1 = g.b(localBitmap1, 50);
        a.getWindow().getDecorView().setBackground(new BitmapDrawable(localBitmap1));
        PopAudioPlayer.a(a, localBitmap1);
        return;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    int m = m * k / j;
    int j = (i - m) / 2;
    if (j >= 0)
    {
      i = j;
      if (j >= m) {}
    }
    for (;;)
    {
      Bitmap localBitmap2 = Bitmap.createBitmap(PopAudioPlayer.q(a), 0, i, k, m);
      break;
      i = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.fs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */