package com.estrongs.android.pop.app.diskusage;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.a.k;
import com.estrongs.android.view.ca;
import com.estrongs.android.widget.bg;
import com.estrongs.fs.util.g;
import java.io.File;

class q
  implements AdapterView.OnItemClickListener
{
  q(h paramh) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramInt -= 1;
    try
    {
      if (h.G(a))
      {
        a.c(paramInt);
        return;
      }
      if (h.f(a) == 0L)
      {
        paramAdapterView = (File)h.m(a).getItem(paramInt);
        if (paramAdapterView.isDirectory())
        {
          h.a(a, paramAdapterView);
          if (h.H(a) != null) {
            h.I(a).a("du://" + h.o(a).getAbsolutePath(), false);
          }
          paramAdapterView = h.k(a).a(paramAdapterView);
          h.c(a, 0L);
          if (h.b(a) == null) {
            h.a(a, h.J(a));
          }
          if (h.b(a) != null)
          {
            h.b(a).a();
            h.b(a).a(paramAdapterView.b());
            h.b(a).setMessage(h.a(a, 2131427863));
            h.b(a).b(h.c(a));
          }
          a.g();
          return;
        }
        AppRunner.a(h.K(a), paramAdapterView.getAbsolutePath(), paramAdapterView.getAbsolutePath());
      }
      return;
    }
    catch (Exception paramAdapterView) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.diskusage.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */