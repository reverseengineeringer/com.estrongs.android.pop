package com.estrongs.android.widget;

import android.view.View;
import android.widget.TextView;
import com.estrongs.android.h.a.e;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.dv;
import com.estrongs.android.view.fv;
import com.estrongs.fs.h;

class u
  implements dv
{
  u(f paramf) {}
  
  public void a(String paramString, boolean paramBoolean)
  {
    a(paramString, paramBoolean, true);
  }
  
  public void a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ("storage://".equals(paramString))
    {
      f.e(a).setText("");
      f.f(a).setEnabled(false);
      if (f.g(a) != null) {
        f.g(a).setVisibility(8);
      }
      if (f.h(a) != null) {
        f.h(a).setEnabled(false);
      }
      if (f.b(a).s()) {
        f.b(a).a(false);
      }
      f.a(a, null);
      return;
    }
    Object localObject;
    if (f.i(a) == null)
    {
      localObject = a.a(paramString);
      if (localObject != null) {
        f.a(a, (h)localObject);
      }
    }
    if (f.i(a) != null) {
      e.a(f.i(a).getAbsolutePath(), f.j(a), f.i(a));
    }
    if ((ap.I(f.k(a)) != ap.I(paramString)) || (f.b(a).ab() == null))
    {
      localObject = ad.a(f.d(a));
      if (f.l(a) != null) {
        break label352;
      }
      f.b(a).b(((ad)localObject).z(paramString));
    }
    for (;;)
    {
      f.a(a, paramString);
      f.e(a).setText(ap.cc(paramString));
      f.f(a).setEnabled(true);
      if (f.g(a) != null) {
        f.g(a).setVisibility(0);
      }
      if (f.h(a) != null) {
        f.h(a).setEnabled(true);
      }
      if (!f.b(a).s()) {
        break;
      }
      f.b(a).a(true);
      return;
      label352:
      f.b(a).b(f.l(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */