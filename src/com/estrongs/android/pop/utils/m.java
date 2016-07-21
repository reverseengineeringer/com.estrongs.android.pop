package com.estrongs.android.pop.utils;

import android.content.Context;
import android.content.Intent;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.notification.d;
import com.estrongs.fs.impl.b.e;
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
      Object localObject2 = e.a(a, (List)localObject1);
      if ((localObject2 != null) && (((List)localObject2).size() >= 1))
      {
        localObject1 = new d(a);
        ((d)localObject1).a(2130838225);
        ((d)localObject1).b(a.getString(2131231870, new Object[] { Integer.valueOf(((List)localObject2).size()) }));
        ((d)localObject1).a(a.getString(2131231870, new Object[] { Integer.valueOf(((List)localObject2).size()) }));
        ((d)localObject1).c(a.getText(2131232319));
        ((d)localObject1).a(false);
        ((d)localObject1).b(true);
        localObject2 = new Intent(a, FileExplorerActivity.class);
        ((Intent)localObject2).putExtra("action", "from_update_notification");
        ((d)localObject1).a((Intent)localObject2, true);
        ((d)localObject1).c();
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