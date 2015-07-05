package com.estrongs.android.widget;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.d.f;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.am;
import com.estrongs.android.view.ca;
import com.estrongs.android.view.dp;
import com.estrongs.fs.h;

class v
  implements ca
{
  v(g paramg) {}
  
  public void a(String paramString, boolean paramBoolean)
  {
    a(paramString, paramBoolean, true);
  }
  
  public void a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ("storage://".equals(paramString))
    {
      g.e(a).setText("");
      g.f(a).setEnabled(false);
      if (g.g(a) != null) {
        g.g(a).setVisibility(8);
      }
      if (g.h(a) != null) {
        g.h(a).setEnabled(false);
      }
      if (g.b(a).p()) {
        g.b(a).a(false);
      }
      g.a(a, null);
      return;
    }
    Object localObject;
    if (g.i(a) == null)
    {
      localObject = a.a(paramString);
      if (localObject != null) {
        g.a(a, (h)localObject);
      }
    }
    if (g.i(a) != null) {
      g.j(a).setImageDrawable(f.e(g.i(a)));
    }
    if ((am.G(g.k(a)) != am.G(paramString)) || (g.b(a).L() == null))
    {
      localObject = ad.a(g.d(a));
      if (g.l(a) != null) {
        break label343;
      }
      g.b(a).b(((ad)localObject).z(paramString));
    }
    for (;;)
    {
      g.a(a, paramString);
      g.e(a).setText(am.bL(paramString));
      g.f(a).setEnabled(true);
      if (g.g(a) != null) {
        g.g(a).setVisibility(0);
      }
      if (g.h(a) != null) {
        g.h(a).setEnabled(true);
      }
      if (!g.b(a).p()) {
        break;
      }
      g.b(a).a(true);
      return;
      label343:
      g.b(a).b(g.l(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */