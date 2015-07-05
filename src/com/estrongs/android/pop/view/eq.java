package com.estrongs.android.pop.view;

import com.estrongs.android.d.f;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.utils.ac;
import com.estrongs.android.ui.c.a;
import com.estrongs.android.ui.guesture.ESGesturePanel;
import com.estrongs.android.ui.preference.q;
import com.estrongs.android.util.am;
import com.estrongs.android.util.ay;
import com.estrongs.android.view.aw;
import java.util.Iterator;
import java.util.List;

class eq
  implements q
{
  eq(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a(String arg1, Object paramObject)
  {
    if ("hidden_file".equals(???))
    {
      FileExplorerActivity.c(a, a.m.p());
      a.a(null);
    }
    do
    {
      Object localObject;
      do
      {
        do
        {
          return;
          if ("thumbnail".equals(???))
          {
            f.a(Boolean.valueOf(paramObject.toString()).booleanValue());
            a.a(null);
            return;
          }
          if ("show_associate_app".equals(???))
          {
            a.g(false);
            return;
          }
          if ("gesture_setting_enabled".equals(???)) {
            try
            {
              a.E.postInvalidate();
              return;
            }
            catch (Exception ???)
            {
              return;
            }
          }
          if (("search_engine_default".equals(???)) || ("show_search_engine".equals(???)) || ("show_pcs_res".equals(???)))
          {
            ay.b();
            return;
          }
          if (!"enable_recycle".equals(???)) {
            break;
          }
        } while (Boolean.valueOf(paramObject.toString()).booleanValue());
        a.X();
        return;
        if ("scroll_thumb".equals(???))
        {
          boolean bool = Boolean.valueOf(paramObject.toString()).booleanValue();
          synchronized (a.x)
          {
            paramObject = a.x.iterator();
            while (((Iterator)paramObject).hasNext())
            {
              localObject = (aw)((Iterator)paramObject).next();
              if (localObject != null) {
                ((aw)localObject).g(bool);
              }
            }
          }
          return;
        }
        if (!"sdcard_size".equals(???)) {
          break;
        }
        FileExplorerActivity.d(a, Boolean.valueOf(paramObject.toString()).booleanValue());
        paramObject = a.y();
      } while (paramObject == null);
      for (;;)
      {
        aw localaw;
        synchronized (a.x)
        {
          localObject = a.x.iterator();
          if (!((Iterator)localObject).hasNext()) {
            break;
          }
          localaw = (aw)((Iterator)localObject).next();
          if ((localaw == null) || ((!am.ba(localaw.c())) && (!am.J(localaw.c())) && (!am.I(localaw.c())) && (!am.p(localaw.c())))) {
            continue;
          }
          if (paramObject == localaw) {
            localaw.g();
          }
        }
        localaw.i(true);
      }
      return;
      if (???.equals("app_backup_path"))
      {
        ac.a(paramObject.toString());
        a.g(false);
        return;
      }
      if (???.equals("download_path"))
      {
        ac.b(paramObject.toString());
        a.g(false);
        return;
      }
    } while (!???.equals("use_xlarge_layout"));
    ad.a(a).x(((Boolean)paramObject).booleanValue());
    a.m();
    a.R();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.eq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */