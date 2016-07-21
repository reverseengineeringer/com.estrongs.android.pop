package com.estrongs.android.pop.app.imageviewer;

import android.content.Intent;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import com.estrongs.android.pop.app.ag;
import com.estrongs.android.pop.app.imageviewer.gallery.e;
import com.estrongs.android.pop.app.imageviewer.gallery.f;
import com.estrongs.android.pop.app.x;
import com.estrongs.android.widget.RealViewSwitcher;

class bb
  implements Runnable
{
  bb(az paramaz, e parame) {}
  
  public void run()
  {
    int i = b.a.e.b();
    if (i == 0) {
      b.a.finish();
    }
    do
    {
      return;
      if (i <= b.a.c) {
        b.a.c = (i - 1);
      }
      i = b.a.e.a(a);
      ViewImage21.a(b.a, new q(b.a, b.a.e));
      ViewImage21.g(b.a).a(b.a.b);
      b.a.k = new DisplayMetrics();
      b.a.getWindowManager().getDefaultDisplay().getMetrics(b.a.k);
      int j = (int)(84.0F * b.a.k.scaledDensity);
      ViewImage21.g(b.a).b(j);
      ViewImage21.i(b.a).setAdapter(ViewImage21.g(b.a));
      ViewImage21.i(b.a).setSelection(i);
      b.a.i.setVisibility(0);
      ViewImage21.e(b.a);
      b.a.findViewById(2131625025).setVisibility(8);
    } while (!b.a.getIntent().getBooleanExtra("Chromecast", false));
    if (ViewImage21.l(b.a).p())
    {
      ViewImage21.n(b.a);
      return;
    }
    if (ViewImage21.o(b.a) == null) {
      ViewImage21.p(b.a);
    }
    ViewImage21.o(b.a).show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.bb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */