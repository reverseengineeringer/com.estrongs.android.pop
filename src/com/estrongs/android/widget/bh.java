package com.estrongs.android.widget;

import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import java.text.NumberFormat;

class bh
  extends Handler
{
  bh(bg parambg) {}
  
  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    bg.a(a);
    if (1 == what) {
      a.c.setText(a.j);
    }
    do
    {
      return;
      if (3 == what)
      {
        bg.b(a).a(a.b, a.g, a.h);
        return;
      }
    } while (2 != what);
    bg.b(a).b(a.b, a.d, a.i);
    double d = a.i / a.h;
    a.e.setText(a.f.format(d));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */