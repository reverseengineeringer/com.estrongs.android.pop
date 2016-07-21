package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.Intent;
import com.estrongs.a.a;
import com.estrongs.a.a.p;
import com.estrongs.android.pop.app.b;
import com.estrongs.android.ui.notification.f;
import com.estrongs.fs.b.ad;
import java.util.Map;

class kv
  implements p
{
  kv(kq paramkq) {}
  
  public void a(a parama, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 4)
    {
      localIntent = b.a(((ad)parama).b());
      localIntent.addFlags(268435456);
      kq.b(a).startActivity(localIntent);
      parama = (f)jh.e.get(Long.valueOf(parama.getTaskId()));
      if (parama != null) {
        parama.a();
      }
    }
    while (paramInt2 != 2)
    {
      Intent localIntent;
      return;
    }
    kq.a(parama.getTaskId());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.kv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */