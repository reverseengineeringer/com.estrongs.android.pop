package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.fs.impl.o.b;

class ak
{
  private int b = 0;
  private Handler c = new al(this);
  
  ak(z paramz) {}
  
  private void a()
  {
    TextView localTextView = (TextView)z.f(a).findViewById(2131625340);
    c.removeMessages(3);
    if (b > 0)
    {
      z.u(a);
      Handler localHandler1 = c;
      Handler localHandler2 = c;
      int i = b - 1;
      b = i;
      localHandler1.sendMessageDelayed(localHandler2.obtainMessage(3, 0, i), 1000L);
      if (localTextView != null) {
        localTextView.setText(z.a(a).getString(2131231981) + " ( " + b + " " + z.a(a).getString(2131232439) + " )");
      }
    }
    do
    {
      return;
      z.v(a);
    } while (localTextView == null);
    localTextView.setText(z.a(a).getString(2131231979));
  }
  
  private void a(int paramInt, Object paramObject)
  {
    switch (paramInt)
    {
    case 1: 
    default: 
      String str = null;
      if ((paramObject instanceof String)) {
        str = (String)paramObject;
      }
      paramObject = str;
      if (str == null) {
        paramObject = z.c(a, 2131231108);
      }
      z.g(a, (String)paramObject);
      return;
    case 0: 
      z.g(a, z.a(a, 2131231955));
      if (a.c().equals(z.d(a)))
      {
        a.setContentView(z.f(a));
        z.q(a);
      }
      b = 30;
      a();
      z.r(a).g(System.currentTimeMillis());
      z.r(a).L(z.h(a) + ":" + z.s(a));
      z.r(a).c(z.r(a).aD() + 1);
      if (z.r(a).aD() >= 3) {
        z.r(a).L("");
      }
      z.t(a);
      return;
    }
    z.a(a, true);
    z.t(a);
    z.g(a, z.b(a, 2131231999));
  }
  
  private void b(int paramInt, Object paramObject)
  {
    String str = null;
    switch (paramInt)
    {
    default: 
      if ((paramObject instanceof String)) {
        str = (String)paramObject;
      }
      paramObject = str;
      if (str == null) {
        paramObject = z.d(a, 2131231108);
      }
      z.g(a, (String)paramObject);
      return;
    }
    b.m(z.l(a));
    z.r(a).c();
    paramObject = u.a();
    if (paramObject != null)
    {
      ((u)paramObject).a(0);
      ((u)paramObject).a(null);
    }
    z.r(a).h(null, null);
    z.r(a).g(0L);
    z.r(a).L("");
    z.r(a).c(0);
    a.dismiss();
    if (a.d != null) {
      a.d.dismiss();
    }
    z.a(a, z.h(a), z.s(a), a.b);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */