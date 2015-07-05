package com.estrongs.android.ui.b;

import android.app.Activity;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.estrongs.a.a;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.b.ad;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import org.json.JSONObject;

class v
  implements AdapterView.OnItemClickListener
{
  v(u paramu) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramView = (f)paramView.getTag();
    if (u.a(a))
    {
      paramView.a(false);
      a.c(paramInt);
      paramView.a(a.h(paramInt));
    }
    for (;;)
    {
      return;
      paramAdapterView = paramView.a();
      int i = paramAdapterView.getTaskStatus();
      if ((paramAdapterView instanceof ad))
      {
        if (i != 1) {
          break label158;
        }
        paramView.a().execute();
      }
      while (i == 4)
      {
        try
        {
          paramView = paramAdapterView.summary().optString("target");
          if ((!am.ba(paramView)) || (d.a().b(paramView))) {
            break label249;
          }
          ag.a(u.c(a), u.d(a).getString(2131428087, new Object[] { paramAdapterView.summary().optString("title") }), 0);
          return;
        }
        catch (FileSystemException paramAdapterView)
        {
          Log.w("TaskGridViewWarpper", "Ignore error when open file in download manager");
          return;
        }
        label158:
        if (i == 3)
        {
          paramView.a().resume();
        }
        else if (i == 5)
        {
          u.b(a).a((h)a.e(paramInt));
          paramView.a().addPostListener(u.b(a));
          paramView.a(paramView.a());
          paramView.a().execute();
        }
        else if (i == 2)
        {
          paramView.a().requsestPause();
        }
      }
    }
    label249:
    AppRunner.a(u.e(a), paramView, paramView);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.b.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */