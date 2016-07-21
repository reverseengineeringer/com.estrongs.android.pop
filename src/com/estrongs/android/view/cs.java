package com.estrongs.android.view;

import android.app.Activity;
import com.estrongs.android.util.ap;
import com.estrongs.fs.a.a;
import com.estrongs.fs.a.b;
import com.estrongs.fs.a.e;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import java.util.List;
import java.util.Set;

class cs
  implements e
{
  cs(cr paramcr) {}
  
  public void a(String paramString, int paramInt, List<String> paramList1, List<String> paramList2)
  {
    if (a.D == null) {}
    for (;;)
    {
      return;
      String str = a.D.getPath();
      int i = a.h(str);
      if (a.Y()) {
        if ((a.d(ap.bV(str)).equals(paramString)) || (("ftp://".equals(str)) && (paramString != null) && ((paramString.startsWith("sftp://")) || (paramString.startsWith("ftps://")) || (paramString.startsWith("ftpes://")) || (paramString.startsWith("webdav://")) || (paramString.startsWith("webdavs://")))) || ((i == 4) && ((paramInt & i) == 4)) || ((i == 2) && ((paramInt & i) == 2)) || ((i == 8) && ((paramInt & i) == 8)) || ((i == 16) && ((paramInt & i) == 16)) || ((i == 32) && ((i & paramInt) == 32)) || (ap.ad(str)) || (ap.ab(str)))
        {
          if ((paramList1 != null) && (paramList1.size() > 0) && (!((String)paramList1.get(0)).endsWith("/*"))) {
            cr.a(a, (String)paramList1.get(0));
          }
          a.ag.runOnUiThread(new cw(this));
        }
      }
      while (cr.a(a) != null)
      {
        cr.a(a, a.d(cr.a(a)));
        return;
        if (((i == 4) && ((paramInt & i) == 4)) || ((i == 2) && ((paramInt & i) == 2)) || ((i == 8) && ((paramInt & i) == 8)) || ((i == 16) && ((paramInt & i) == 16)) || ((i == 32) && ((i & paramInt) == 32)) || (ap.ad(str)) || (ap.ab(str))) {}
        for (a.P = true;; a.P = true) {
          do
          {
            if (!a.P) {
              break label562;
            }
            if ((paramList2 == null) || (paramList2.size() <= 0) || (((String)paramList2.get(0)).endsWith("/*"))) {
              break label564;
            }
            cr.a(a, (String)paramList2.get(0));
            break;
          } while (((str == null) || (!a.d(ap.bV(str)).equals(paramString))) && ((!"ftp://".equals(str)) || (paramString == null) || ((!paramString.startsWith("sftp://")) && (!paramString.startsWith("ftps://")) && (!paramString.startsWith("ftpes://")) && (!paramString.startsWith("webdav://")) && (!paramString.startsWith("webdavs://")))));
        }
        label562:
        continue;
        label564:
        if ((paramList1 != null) && (paramList1.size() > 0) && (!((String)paramList1.get(0)).endsWith("/*"))) {
          cr.a(a, (String)paramList1.get(0));
        }
      }
    }
  }
  
  public void a(String paramString1, String paramString2, int paramInt)
  {
    if (a.D == null) {}
    String str;
    do
    {
      do
      {
        int i;
        do
        {
          return;
          str = a.D.getPath();
          i = a.h(str);
          if (!a.Y()) {
            break;
          }
        } while ((!a.a(paramString1).equals(a.d(ap.bV(str)))) && ((i != 4) || ((paramInt & i) != 4)) && ((i != 2) || ((paramInt & i) != 2)) && ((i != 8) || ((paramInt & i) != 8)) && ((i != 16) || ((paramInt & i) != 16)) && ((i != 32) || ((i & paramInt) != 32)) && (!ap.ad(str)) && (!ap.ab(str)));
        a.ag.runOnUiThread(new cv(this));
        return;
        if (((i == 4) && ((paramInt & i) == 4)) || ((i == 2) && ((paramInt & i) == 2)) || ((i == 8) && ((paramInt & i) == 8)) || ((i == 16) && ((paramInt & i) == 16)) || ((i == 32) && ((i & paramInt) == 32)) || (ap.ad(str)) || (ap.ab(str)))
        {
          a.P = true;
          return;
        }
      } while (str == null);
      if (ap.bV(str).equals(paramString2))
      {
        a.P = true;
        return;
      }
      if (a.a(paramString1, ap.bV(str)))
      {
        if (a.e(str)) {}
        for (paramString1 = a.f(paramString2 + ap.bV(str).substring(paramString1.length(), ap.bV(str).length()));; paramString1 = paramString2 + ap.bV(str).substring(paramString1.length(), ap.bV(str).length()))
        {
          a.D = d.a(a.ag).j(paramString1);
          a.P = true;
          return;
        }
      }
    } while (!a.a(paramString1).equals(a.d(ap.bV(str))));
    a.P = true;
  }
  
  public void a(List<String> paramList, int paramInt, String paramString)
  {
    if (a.D == null) {}
    String str;
    label292:
    label374:
    label382:
    label577:
    do
    {
      do
      {
        int j;
        do
        {
          do
          {
            for (;;)
            {
              return;
              str = a.D.getPath();
              j = a.h(str);
              if (!a.Y()) {
                break label382;
              }
              if (((j == 4) && ((paramInt & j) == 4)) || ((j == 2) && ((paramInt & j) == 2)) || ((j == 8) && ((paramInt & j) == 8)) || ((j == 16) && ((paramInt & j) == 16))) {}
              for (int i = 1; i == 0; i = 0)
              {
                if ((!b.a().c(paramList).contains(a.d(ap.bV(str)))) && ((j != 32) || ((paramInt & j) != 32)) && (!b.a().c(paramList).contains("sftp://")) && (!b.a().c(paramList).contains("ftps://")) && (!b.a().c(paramList).contains("ftpes://")) && (!b.a().c(paramList).contains("webdav://")) && (!b.a().c(paramList).contains("webdavs://")) && ((paramString == null) || (!paramString.equals(str))) && (!ap.ad(str)) && (!ap.ab(str))) {
                  break label292;
                }
                a.ag.runOnUiThread(new ct(this));
                return;
              }
            }
          } while (str == null);
          paramList = a.a(paramList, ap.bV(str));
        } while (paramList == null);
        if (!ap.aK(paramList)) {
          if (!a.e(str)) {
            break label374;
          }
        }
        for (paramList = a.f(ap.bB(paramList));; paramList = ap.bB(paramList))
        {
          a.D = d.a(a.ag).j(paramList);
          a.ag.runOnUiThread(new cu(this));
          return;
        }
        if ((paramString != null) && (paramString.equals(str)))
        {
          a.P = true;
          return;
        }
        if (((j == 4) && ((paramInt & j) == 4)) || ((j == 2) && ((paramInt & j) == 2)) || ((j == 8) && ((paramInt & j) == 8)) || ((j == 16) && ((paramInt & j) == 16)) || ((j == 32) && ((paramInt & j) == 32)) || (ap.ad(str)) || (ap.ab(str)))
        {
          a.P = true;
          return;
        }
      } while (str == null);
      paramString = a.a(paramList, ap.bV(str));
      if (paramString != null)
      {
        if (!ap.aK(paramString))
        {
          if (!a.e(str)) {
            break label577;
          }
          paramList = a.f(a.a(paramString));
        }
        for (;;)
        {
          a.D = d.a(a.ag).j(paramList);
          a.P = true;
          return;
          paramString = a.a(paramString);
          paramList = paramString;
          if (ap.aG(paramString))
          {
            paramList = paramString;
            if ("pcs".equals(ap.ax(paramString)))
            {
              paramList = paramString;
              if (ap.aq(paramString).equals("/")) {
                paramList = a.a(paramString);
              }
            }
          }
        }
      }
    } while (!b.a().c(paramList).contains(a.d(ap.bV(str))));
    a.P = true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.cs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */