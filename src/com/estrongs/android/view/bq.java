package com.estrongs.android.view;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.util.bk;

class bq
  extends Handler
{
  private int b = 1;
  
  bq(bo parambo) {}
  
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
          bo.a(a).setIndeterminate(false);
          bo.b(a).setIndeterminate(false);
          return;
          bo.a(a).setIndeterminate(false);
          if (bo.c(a) > 2147483647L) {
            b = 100;
          }
          bo.a(a).setMax((int)(bo.c(a) / b));
          return;
          bo.a(a).setProgress((int)(bo.d(a) / b));
          bo.e(a).setText(String.valueOf((int)bo.a(a, bo.d(a), bo.c(a))) + "%");
          return;
          TextView localTextView;
          if (a.f != null)
          {
            bo.f(a).setText(a.f);
            if (a.g == null) {
              break label341;
            }
            bo.h(a).setVisibility(0);
            bo.h(a).setText(a.g);
            localTextView = bo.k(a);
            if (bo.j(a) != null) {
              break label412;
            }
          }
          for (paramMessage = (Message)localObject;; paramMessage = " : " + bo.j(a))
          {
            localTextView.setText(paramMessage);
            return;
            bo.f(a).setText(bo.g(a));
            break;
            if ((bo.i(a) == null) || ("".equals(bo.i(a))))
            {
              bo.h(a).setVisibility(8);
              break label295;
            }
            bo.h(a).setVisibility(0);
            bo.h(a).setText(bo.i(a));
            break label295;
          }
          bo.l(a).setVisibility(8);
          return;
          if (bo.m(a) > 2147483647L) {
            b = 100;
          }
          bo.b(a).setMax((int)(bo.m(a) / b));
          return;
          bo.b(a).setProgress((int)(bo.n(a) / b));
          paramMessage = String.valueOf((int)bo.a(a, bo.n(a), bo.m(a))) + "%";
          bo.o(a).setText(paramMessage);
          return;
          bo.a(a).setIndeterminate(true);
          bo.b(a).setIndeterminate(true);
          a(bo.f(a), null);
          a(bo.k(a), null);
          a(bo.p(a), null);
          a(bo.q(a), null);
          a(bo.e(a), null);
          a(bo.o(a), null);
          a(bo.r(a), null);
          a(bo.s(a), null);
          return;
          a(bo.r(a), String.valueOf(bo.t(a)));
        } while (bo.t(a) != bo.u(a));
        if (bo.u(a) == 1)
        {
          bo.o(a).setVisibility(0);
          bo.o(a).setText(2131232408);
          return;
        }
        if (bo.u(a) > 1)
        {
          bo.e(a).setVisibility(0);
          bo.e(a).setText(2131232408);
          return;
        }
      } while (bo.u(a) > 0);
      bo.e(a).setVisibility(8);
      return;
    case 10: 
      label295:
      label341:
      label412:
      a(bo.s(a), String.valueOf(bo.u(a)));
      return;
    }
    if (obj == null) {}
    for (paramMessage = null; bk.a(paramMessage); paramMessage = String.valueOf(obj))
    {
      bo.v(a).setVisibility(8);
      return;
    }
    bo.v(a).setVisibility(0);
    ((TextView)bo.v(a).findViewById(2131624614)).setText(paramMessage);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.bq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */