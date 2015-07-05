package com.estrongs.android.view;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.util.bd;

class al
  extends Handler
{
  private int b = 1;
  
  al(ak paramak) {}
  
  private void a(TextView paramTextView, String paramString)
  {
    if (paramTextView != null) {
      paramTextView.setText(paramString);
    }
  }
  
  public void handleMessage(Message paramMessage)
  {
    Object localObject = null;
    switch (what)
    {
    case 2: 
    case 3: 
    default: 
    case 13: 
    case 1: 
    case 4: 
    case 5: 
    case 6: 
    case 7: 
    case 8: 
    case 11: 
    case 9: 
      do
      {
        do
        {
          return;
          ak.a(a).setIndeterminate(false);
          ak.b(a).setIndeterminate(false);
          return;
          ak.a(a).setIndeterminate(false);
          if (ak.c(a) > 2147483647L) {
            b = 100;
          }
          ak.a(a).setMax((int)(ak.c(a) / b));
          return;
          ak.a(a).setProgress((int)(ak.d(a) / b));
          ak.e(a).setText(String.valueOf((int)ak.a(a, ak.d(a), ak.c(a))) + "%");
          return;
          TextView localTextView;
          if (a.d != null)
          {
            ak.f(a).setText(a.d);
            if (a.e == null) {
              break label341;
            }
            ak.h(a).setVisibility(0);
            ak.h(a).setText(a.e);
            localTextView = ak.k(a);
            if (ak.j(a) != null) {
              break label412;
            }
          }
          for (paramMessage = (Message)localObject;; paramMessage = " : " + ak.j(a))
          {
            localTextView.setText(paramMessage);
            return;
            ak.f(a).setText(ak.g(a));
            break;
            if ((ak.i(a) == null) || ("".equals(ak.i(a))))
            {
              ak.h(a).setVisibility(8);
              break label295;
            }
            ak.h(a).setVisibility(0);
            ak.h(a).setText(ak.i(a));
            break label295;
          }
          ak.l(a).setVisibility(8);
          return;
          if (ak.m(a) > 2147483647L) {
            b = 100;
          }
          ak.b(a).setMax((int)(ak.m(a) / b));
          return;
          ak.b(a).setProgress((int)(ak.n(a) / b));
          paramMessage = String.valueOf((int)ak.a(a, ak.n(a), ak.m(a))) + "%";
          ak.o(a).setText(paramMessage);
          return;
          ak.a(a).setIndeterminate(true);
          ak.b(a).setIndeterminate(true);
          a(ak.f(a), null);
          a(ak.k(a), null);
          a(ak.p(a), null);
          a(ak.q(a), null);
          a(ak.e(a), null);
          a(ak.o(a), null);
          a(ak.r(a), null);
          a(ak.s(a), null);
          return;
          a(ak.r(a), String.valueOf(ak.t(a)));
        } while (ak.t(a) != ak.u(a));
        if (ak.u(a) == 1)
        {
          ak.o(a).setVisibility(0);
          ak.o(a).setText(2131428126);
          return;
        }
        if (ak.u(a) > 1)
        {
          ak.e(a).setVisibility(0);
          ak.e(a).setText(2131428126);
          return;
        }
      } while (ak.u(a) > 0);
      ak.e(a).setVisibility(8);
      return;
    case 10: 
      label295:
      label341:
      label412:
      a(ak.s(a), String.valueOf(ak.u(a)));
      return;
    }
    if (obj == null) {}
    for (paramMessage = null; bd.a(paramMessage); paramMessage = String.valueOf(obj))
    {
      ak.v(a).setVisibility(8);
      return;
    }
    ak.v(a).setVisibility(0);
    ((TextView)ak.v(a).findViewById(2131362068)).setText(paramMessage);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */