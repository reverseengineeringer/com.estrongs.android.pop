package com.estrongs.android.pop.app.unlock;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.j.c;
import org.json.JSONObject;

class x
  implements View.OnClickListener
{
  x(s params, String paramString1, String paramString2, Context paramContext) {}
  
  public void onClick(View paramView)
  {
    try
    {
      paramView = new JSONObject();
      paramView.put("feature", a);
      if ("leftNavi".equals(b)) {
        c.a(s.a(d)).a("unlockswitch", paramView);
      }
      for (;;)
      {
        paramView = new Intent(c, UnLockDialogActivity.class);
        paramView.putExtra("lock_id", a);
        paramView.putExtra("lock_from", b);
        c.startActivity(paramView);
        return;
        paramView.put("positon", b);
        paramView.put("action", "click");
        c.a(s.a(d)).a("unlockc", paramView);
      }
    }
    catch (Exception paramView)
    {
      for (;;)
      {
        paramView.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.unlock.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */