package com.estrongs.android.pop.app.a;

import com.dianxinos.lockscreen.h;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.navigation.m;
import org.json.JSONObject;

final class g
  implements h
{
  public void a(Boolean paramBoolean)
  {
    if (!paramBoolean.booleanValue()) {}
    try
    {
      paramBoolean = new JSONObject();
      paramBoolean.put("event", "close_charge");
      paramBoolean.put("positon", "sdk");
      c.a(FexApplication.a()).a("charge", "close_charge", paramBoolean);
      paramBoolean = FileExplorerActivity.X();
      if (paramBoolean != null) {
        paramBoolean.ae().d();
      }
      return;
    }
    catch (Exception paramBoolean)
    {
      for (;;)
      {
        paramBoolean.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */