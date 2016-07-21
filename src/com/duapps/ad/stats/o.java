package com.duapps.ad.stats;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.dianxinos.a.a.d;
import com.dianxinos.a.a.e;

class o
  implements Runnable
{
  o(n paramn, String paramString) {}
  
  public void run()
  {
    if (n.a(b) == null) {
      n.a(b, Toast.makeText(n.b(b), a, 0));
    }
    View localView = LayoutInflater.from(n.b(b)).inflate(e.toast_layout, null);
    ((TextView)localView.findViewById(d.toast_message)).setText(a);
    n.a(b).setView(localView);
    n.a(b).show();
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.stats.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */