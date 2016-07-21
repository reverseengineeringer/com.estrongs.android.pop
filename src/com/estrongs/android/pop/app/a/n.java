package com.estrongs.android.pop.app.a;

import android.app.Activity;
import android.os.AsyncTask;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.ai;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;
import org.json.JSONObject;

public class n
{
  public static void a(Activity paramActivity)
  {
    new o(paramActivity).execute(new Void[0]);
  }
  
  private static void b(Activity paramActivity, int paramInt)
  {
    ai localai = ai.b(paramActivity);
    localai.b("key_last_shown_unlock_dialog_by_charging_time", Long.valueOf(System.currentTimeMillis()));
    localai.b("key_shown_unlock_dialog_by_charging", localai.a("key_shown_unlock_dialog_by_charging", 0) + 1);
    new cv(paramActivity).a(paramActivity.getString(2131231215)).b(paramActivity.getString(2131232507, new Object[] { Integer.valueOf(paramInt) })).b(2131232500, new q(paramActivity)).c(2131230860, new p()).b().show();
    b(paramActivity, true);
  }
  
  private static void b(Activity paramActivity, boolean paramBoolean)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("from", "charge");
      localJSONObject.put("feature", "lock_realtimemonitor");
      if (paramBoolean) {}
      for (String str = "show";; str = "click")
      {
        localJSONObject.put("action", str);
        c.a(paramActivity).a("unlockd", localJSONObject);
        return;
      }
      return;
    }
    catch (Exception paramActivity)
    {
      paramActivity.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */