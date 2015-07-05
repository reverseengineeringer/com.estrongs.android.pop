package com.estrongs.android.pop.view;

import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.Button;
import com.estrongs.android.ui.addressbar.AdvancedAddressBar;
import com.estrongs.android.ui.d.e;
import com.estrongs.android.ui.e.w;
import com.estrongs.android.util.am;
import com.estrongs.android.view.WebViewWrapper;
import com.estrongs.android.view.aw;
import java.util.ArrayList;

class d
  implements Runnable
{
  d(c paramc, String paramString1, String paramString2, ArrayList paramArrayList, String paramString3, int paramInt, aw paramaw, boolean paramBoolean1, boolean paramBoolean2) {}
  
  public void run()
  {
    for (;;)
    {
      try
      {
        if ((a == null) && (am.be(b)))
        {
          c.add("/");
          if (i.b.u)
          {
            if (d != null) {
              c.add(0, d);
            }
            localObject = e.c(e);
            if (localObject != null) {
              ((com.estrongs.android.ui.d.d)localObject).a(c);
            }
          }
          Object localObject = new String[c.size()];
          c.toArray((Object[])localObject);
          if (!i.b.u) {
            break label431;
          }
          FileExplorerActivity.a(i.b).b(false);
          FileExplorerActivity.a(i.b).a((String[])localObject);
          if (f != null)
          {
            if ((f.F()) && ((!g) || (!am.aX(b))) && ((!g) || (!i.b.f(b))))
            {
              i.b.q = true;
              i.b.f(false);
            }
            if ((f.z()) && (h)) {
              i.b.s();
            }
            localObject = i.b.getWindow().getAttributes();
            if (!(f instanceof WebViewWrapper)) {
              break label453;
            }
            softInputMode = 16;
            i.b.getWindow().setAttributes((WindowManager.LayoutParams)localObject);
          }
          i.b.a(b, e, f);
          FileExplorerActivity.b(i.b);
          i.b.k.c(true);
          i.b.k.j();
          return;
        }
        if ((a != null) && (a.equals("#home_page#")))
        {
          c.add(i.b.getString(2131428432));
          continue;
        }
        localArrayList = c;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      ArrayList localArrayList;
      if (a == null) {}
      for (String str = "";; str = a)
      {
        localArrayList.add(str);
        break;
      }
      label431:
      i.b.z.setText(str[(str.length - 1)]);
      continue;
      label453:
      softInputMode = 48;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */