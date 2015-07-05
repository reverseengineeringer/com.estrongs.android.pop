package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.a;
import com.estrongs.fs.impl.j.b;

class ah
{
  private int b = 0;
  private Handler c = new ai(this);
  
  ah(w paramw) {}
  
  private void a()
  {
    TextView localTextView = (TextView)w.f(a).findViewById(2131362589);
    c.removeMessages(3);
    if (b > 0)
    {
      w.u(a);
      Handler localHandler1 = c;
      Handler localHandler2 = c;
      int i = b - 1;
      b = i;
      localHandler1.sendMessageDelayed(localHandler2.obtainMessage(3, 0, i), 1000L);
      if (localTextView != null) {
        localTextView.setText(w.a(a).getString(2131428649) + " ( " + b + " " + w.a(a).getString(2131427732) + " )");
      }
    }
    do
    {
      return;
      w.v(a);
    } while (localTextView == null);
    localTextView.setText(w.a(a).getString(2131428650));
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
        paramObject = w.c(a, 2131428585);
      }
      w.g(a, (String)paramObject);
      return;
    case 0: 
      w.g(a, w.a(a, 2131428592));
      if (a.c().equals(w.d(a)))
      {
        a.setContentView(w.f(a));
        w.q(a);
      }
      b = 30;
      a();
      w.r(a).g(System.currentTimeMillis());
      w.r(a).L(w.h(a) + ":" + w.s(a));
      w.r(a).c(w.r(a).aC() + 1);
      if (w.r(a).aC() >= 3) {
        w.r(a).L("");
      }
      w.t(a);
      return;
    }
    w.a(a, true);
    w.t(a);
    w.g(a, w.b(a, 2131428586));
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
        paramObject = w.d(a, 2131428585);
      }
      w.g(a, (String)paramObject);
    }
    do
    {
      return;
      b.m(w.l(a));
      w.r(a).b();
      paramObject = r.a();
      if (paramObject != null)
      {
        ((r)paramObject).a(0);
        ((r)paramObject).a(null);
      }
      w.r(a).h(null, null);
      w.r(a).g(0L);
      w.r(a).L("");
      w.r(a).c(0);
      a.dismiss();
      if (a.d != null) {
        a.d.dismiss();
      }
      w.a(a, w.h(a), w.s(a), a.b);
      paramObject = a.a();
    } while (paramObject == null);
    ((a)paramObject).e("PCS_Upgrade_UV", "PCS_Upgrade_UV");
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */