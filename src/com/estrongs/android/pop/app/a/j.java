package com.estrongs.android.pop.app.a;

import android.app.Dialog;
import android.support.v7.widget.SwitchCompat;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.FexApplication;
import org.json.JSONObject;

final class j
  implements View.OnClickListener
{
  j(Dialog paramDialog, int paramInt, SwitchCompat paramSwitchCompat) {}
  
  public void onClick(View paramView)
  {
    a.dismiss();
    if (b == 1)
    {
      if (c.isChecked()) {
        a.a(true, "newuser_1");
      }
    }
    else {
      return;
    }
    try
    {
      paramView = new JSONObject();
      paramView.put("event", "user_closed");
      c.a(FexApplication.a()).a("charge", "charge_new_user", paramView);
      return;
    }
    catch (Exception paramView)
    {
      paramView.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */