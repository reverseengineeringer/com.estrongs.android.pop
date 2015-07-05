package com.estrongs.android.pop.utils;

import android.content.Context;
import android.content.Intent;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.impl.b.d;
import java.util.List;

class m
  implements Runnable
{
  m(c paramc, Context paramContext) {}
  
  public void run()
  {
    Object localObject1 = b.b(a);
    if ((localObject1 != null) && (((List)localObject1).size() >= 1)) {}
    try
    {
      Object localObject2 = d.a(a, (List)localObject1);
      if ((localObject2 != null) && (((List)localObject2).size() >= 1))
      {
        localObject1 = new com.estrongs.android.ui.notification.c(a);
        ((com.estrongs.android.ui.notification.c)localObject1).a(2130837911);
        ((com.estrongs.android.ui.notification.c)localObject1).b(a.getString(2131428671, new Object[] { Integer.valueOf(((List)localObject2).size()) }));
        ((com.estrongs.android.ui.notification.c)localObject1).a(a.getString(2131428671, new Object[] { Integer.valueOf(((List)localObject2).size()) }));
        ((com.estrongs.android.ui.notification.c)localObject1).c(a.getText(2131428107));
        ((com.estrongs.android.ui.notification.c)localObject1).a(false);
        ((com.estrongs.android.ui.notification.c)localObject1).b(true);
        localObject2 = new Intent(a, FileExplorerActivity.class);
        ((Intent)localObject2).putExtra("action", "from_update_notification");
        ((com.estrongs.android.ui.notification.c)localObject1).a((Intent)localObject2, true);
        ((com.estrongs.android.ui.notification.c)localObject1).c();
      }
      return;
    }
    catch (Exception localException) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */