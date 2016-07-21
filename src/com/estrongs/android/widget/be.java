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
      float f1 = i / ScaledImageView.b(a);
      ScaledImageView.a(a, (int)(ScaledImageView.c(a) + (ScaledImageView.d(a) - ScaledImageView.c(a)) * f1));
      paramMessage = a;
      float f2 = ScaledImageView.e(a);
      ScaledImageView.b(paramMessage, (int)(f1 * (ScaledImageView.f(a) - ScaledImageView.e(a)) + f2));
      ScaledImageView.g(a);
      return;
    }
    a.a();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */