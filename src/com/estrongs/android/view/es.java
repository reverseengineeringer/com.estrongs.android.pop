package com.estrongs.android.view;

import android.support.v7.widget.RecyclerView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.app.b.x;
import org.json.JSONObject;

class es
  implements x
{
  es(er paramer) {}
  
  public void a()
  {
    er.a(a).setVisibility(0);
    er.b(a).setVisibility(8);
    er.c(a).setVisibility(8);
  }
  
  public void a(int paramInt)
  {
    a.aD();
    er.a(a).setVisibility(8);
    if (paramInt > 0)
    {
      er.b(a).setVisibility(8);
      er.c(a).setVisibility(0);
    }
    for (;;)
    {
      try
      {
        JSONObject localJSONObject = new JSONObject();
        localJSONObject.put("hp_cost_time", (System.currentTimeMillis() - er.d(a)) / 1000L);
        c.a(a.aF()).a("log", localJSONObject);
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      er.b(a).setVisibility(0);
      er.c(a).setVisibility(8);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.es
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */