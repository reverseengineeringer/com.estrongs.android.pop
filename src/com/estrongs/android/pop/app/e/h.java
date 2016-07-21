package com.estrongs.android.pop.app.e;

import android.content.Context;
import android.content.Intent;
import com.dianxinos.lockscreen.a.b;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.view.FileExplorerActivity;

public class h
  implements b
{
  public void a()
  {
    FexApplication localFexApplication = FexApplication.a();
    Intent localIntent = new Intent(localFexApplication, FileExplorerActivity.class);
    localIntent.addFlags(268435456);
    localIntent.putExtra("action", "show_local_tab");
    localFexApplication.startActivity(localIntent);
  }
  
  public int b()
  {
    return g.a().b();
  }
  
  public String c()
  {
    return FexApplication.a().getString(2131231683);
  }
  
  public String d()
  {
    float f1 = (float)g.a().d() / 1.07374182E9F;
    float f2 = (float)g.a().c() / 1.07374182E9F;
    return FexApplication.a().getString(2131231374).replace(":", " ") + String.format("%.2f GB/%.2f GB", new Object[] { Float.valueOf(f1), Float.valueOf(f2) });
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.e.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */