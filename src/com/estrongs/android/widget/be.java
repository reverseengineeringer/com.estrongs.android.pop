package com.estrongs.android.widget;

import android.os.Handler;
import android.os.Message;

class be
  extends Handler
{
  be(ScaledImageView paramScaledImageView) {}
  
  public void handleMessage(Message paramMessage)
  {
    int i = (int)(System.currentTimeMillis() - ScaledImageView.a(a));
    if (i < ScaledImageView.b(a))
    {
      float f = i / ScaledImageView.b(a);
      ScaledImageView.a(a, (int)(ScaledImageView.d(a) - (ScaledImageView.d(a) - ScaledImageView.c(a)) * f));
      ScaledImageView.b(a, (int)(ScaledImageView.f(a) - f * (ScaledImageView.f(a) - ScaledImageView.e(a))));
      ScaledImageView.g(a);
      return;
    }
    a.b();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */