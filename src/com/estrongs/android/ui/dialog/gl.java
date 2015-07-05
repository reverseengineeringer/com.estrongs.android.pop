package com.estrongs.android.ui.dialog;

import android.os.RemoteException;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.estrongs.android.pop.a.a;
import org.json.JSONException;
import org.json.JSONObject;

class gl
  implements AdapterView.OnItemClickListener
{
  gl(gk paramgk) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = gk.a(a).a(paramInt);
    if (paramAdapterView.has("key")) {}
    try
    {
      paramView = paramAdapterView.getString("key");
      if (paramAdapterView.getInt("disable") == 1) {
        a.b(gk.b(a), paramView);
      }
      for (;;)
      {
        gk.c(a);
        return;
        a.a(gk.b(a), paramView);
      }
    }
    catch (JSONException paramAdapterView)
    {
      for (;;)
      {
        paramAdapterView.printStackTrace();
      }
    }
    catch (RemoteException paramAdapterView)
    {
      for (;;)
      {
        paramAdapterView.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.gl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */