package com.estrongs.android.pop.view;

import com.estrongs.android.h.a.e;
import com.estrongs.android.h.f;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.utils.ac;
import com.estrongs.android.ui.guesture.ESGesturePanel;
import com.estrongs.android.ui.preference.q;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bc;
import com.estrongs.android.view.cr;
import java.util.Iterator;
import java.util.List;

class di
  implements q
{
  di(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a(String arg1, Object paramObject)
  {
    if ("hidden_file".equals(???))
    {
      FileExplorerActivity.d(a, a.k.q());
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
            e.c();
            a.a(null);
            return;
          }
          if ("show_associate_app".equals(???))
          {
            a.f(false);
            return;
          }
          if ("gesture_setting_enabled".equals(???)) {
            try
            {
              if (Boolean.parseBoolean(paramObject.toString())) {
                FileExplorerActivity.s(a).a("gesture_enabled");
              }
              a.A.postInvalidate();
              return;
            }
            catch (Exception ???)
            {
              return;
            }
          }
          if (("search_engine_default".equals(???)) || ("show_search_engine".equals(???)) || ("show_pcs_res".equals(???)))
          {
            bc.b();
            return;
          }
          if (!"enable_recycle".equals(???)) {
            break;
          }
        } while (Boolean.valueOf(paramObject.toString()).booleanValue());
        a.an();
        return;
        if ("scroll_thumb".equals(???))
        {
          boolean bool = Boolean.valueOf(paramObject.toString()).booleanValue();
          synchronized (a.w)
          {
            paramObject = a.w.iterator();
            while (((Iterator)paramObject).hasNext())
            {
              localObject = (cr)((Iterator)paramObject).next();
              if (localObject != null) {
                ((cr)localObject).g(bool);
              }
            }
          }
          return;
        }
        if (!"sdcard_size".equals(???)) {
          break;
        }
        FileExplorerActivity.e(a, Boolean.valueOf(paramObject.toString()).booleanValue());
        paramObject = a.O();
      } while (paramObject == null);
      for (;;)
      {
        cr localcr;
        synchronized (a.w)
        {
          localObject = a.w.iterator();
          if (!((Iterator)localObject).hasNext()) {
            break;
          }
          localcr = (cr)((Iterator)localObject).next();
          if ((localcr == null) || ((!ap.bl(localcr.c())) && (!ap.L(localcr.c())) && (!ap.K(localcr.c())) && (!ap.r(localcr.c())))) {
            continue;
          }
          if (paramObject == localcr) {
            localcr.g();
          }
        }
        localcr.i(true);
      }
      return;
      if (???.equals("app_backup_path"))
      {
        ac.a(paramObject.toString());
        a.f(false);
        return;
      }
      if (???.equals("download_path"))
      {
        ac.b(paramObject.toString());
        a.f(false);
        return;
      }
      if (???.equals("use_xlarge_layout"))
      {
        ad.a(a).w(((Boolean)paramObject).booleanValue());
        a.ah();
        return;
      }
      if (???.endsWith("restoresettings"))
      {
        a.ah();
        return;
      }
    } while (!"show_nomedia".equals(???));
    a.a(null);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.di
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */