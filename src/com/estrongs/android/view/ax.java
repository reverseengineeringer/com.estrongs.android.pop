package com.estrongs.android.view;

import android.app.Activity;
import com.estrongs.android.util.am;
import com.estrongs.fs.a.a;
import com.estrongs.fs.a.b;
import com.estrongs.fs.a.e;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import java.util.List;
import java.util.Set;

class ax
  implements e
{
  ax(aw paramaw) {}
  
  public void a(String paramString, int paramInt, List<String> paramList1, List<String> paramList2)
  {
    if (a.w == null) {}
    for (;;)
    {
      return;
      String str = a.w.getPath();
      int i = a.e(str);
      if (a.H()) {
        if ((a.d(am.bE(str)).equals(paramString)) || (("ftp://".equals(str)) && (paramString != null) && ((paramString.startsWith("sftp://")) || (paramString.startsWith("ftps://")) || (paramString.startsWith("ftpes://")) || (paramString.startsWith("webdav://")) || (paramString.startsWith("webdavs://")))) || ((i == 4) && ((paramInt & i) == 4)) || ((i == 2) && ((paramInt & i) == 2)) || ((i == 8) && ((paramInt & i) == 8)) || ((i == 16) && ((paramInt & i) == 16)) || ((i == 32) && ((paramInt & i) == 32)))
        {
          if ((paramList1 != null) && (paramList1.size() > 0) && (!((String)paramList1.get(0)).endsWith("/*"))) {
            aw.a(a, (String)paramList1.get(0));
          }
          a.ad.runOnUiThread(new bb(this));
        }
      }
      while (aw.a(a) != null)
      {
        aw.a(a, a.d(aw.a(a)));
        return;
        if (((i == 4) && ((paramInt & i) == 4)) || ((i == 2) && ((paramInt & i) == 2)) || ((i == 8) && ((paramInt & i) == 8)) || ((i == 16) && ((paramInt & i) == 16)) || ((i == 32) && ((i & paramInt) == 32))) {}
        for (a.J = true;; a.J = true) {
          do
          {
            if (!a.J) {
              break label530;
            }
            if ((paramList2 == null) || (paramList2.size() <= 0) || (((String)paramList2.get(0)).endsWith("/*"))) {
              break label532;
            }
            aw.a(a, (String)paramList2.get(0));
            break;
          } while (((str == null) || (!a.d(am.bE(str)).equals(paramString))) && ((!"ftp://".equals(str)) || (paramString == null) || ((!paramString.startsWith("sftp://")) && (!paramString.startsWith("ftps://")) && (!paramString.startsWith("ftpes://")) && (!paramString.startsWith("webdav://")) && (!paramString.startsWith("webdavs://")))));
        }
        label530:
        continue;
        label532:
        if ((paramList1 != null) && (paramList1.size() > 0) && (!((String)paramList1.get(0)).endsWith("/*"))) {
          aw.a(a, (String)paramList1.get(0));
        }
      }
    }
  }
  
  public void a(String paramString1, String paramString2, int paramInt)
  {
    if (a.w == null) {}
    String str;
    do
    {
      do
      {
        int i;
        do
        {
          return;
          str = a.w.getPath();
          i = a.e(str);
          if (!a.H()) {
            break;
          }
        } while ((!a.a(paramString1).equals(a.d(am.bE(str)))) && ((i != 4) || ((paramInt & i) != 4)) && ((i != 2) || ((paramInt & i) != 2)) && ((i != 8) || ((paramInt & i) != 8)) && ((i != 16) || ((paramInt & i) != 16)) && ((i != 32) || ((paramInt & i) != 32)));
        a.ad.runOnUiThread(new ba(this));
        return;
        if (((i == 4) && ((paramInt & i) == 4)) || ((i == 2) && ((paramInt & i) == 2)) || ((i == 8) && ((paramInt & i) == 8)) || ((i == 16) && ((paramInt & i) == 16)) || ((i == 32) && ((i & paramInt) == 32)))
        {
          a.J = true;
          return;
        }
      } while (str == null);
      if (am.bE(str).equals(paramString2))
      {
        a.J = true;
        return;
      }
      if (a.a(paramString1, am.bE(str)))
      {
        if (a.e(str)) {}
        for (paramString1 = a.f(paramString2 + am.bE(str).substring(paramString1.length(), am.bE(str).length()));; paramString1 = paramString2 + am.bE(str).substring(paramString1.length(), am.bE(str).length()))
        {
          a.w = d.a(a.ad).j(paramString1);
          a.J = true;
          return;
        }
      }
    } while (!a.a(paramString1).equals(a.d(am.bE(str))));
    a.J = true;
  }
  
  public void a(List<String> paramList, int paramInt, String paramString)
  {
    if (a.w == null) {}
    String str;
    label344:
    label531:
    do
    {
      do
      {
        int i;
        do
        {
          do
          {
            return;
            str = a.w.getPath();
            i = a.e(str);
            if (!a.H()) {
              break;
            }
            if ((b.a().c(paramList).contains(a.d(am.bE(str)))) || ((i == 4) && ((paramInt & i) == 4)) || ((i == 2) && ((paramInt & i) == 2)) || ((i == 8) && ((paramInt & i) == 8)) || ((i == 16) && ((paramInt & i) == 16)) || ((i == 32) && ((i & paramInt) == 32)) || (b.a().c(paramList).contains("sftp://")) || (b.a().c(paramList).contains("ftps://")) || (b.a().c(paramList).contains("ftpes://")) || (b.a().c(paramList).contains("webdav://")) || (b.a().c(paramList).contains("webdavs://")) || ((paramString != null) && (paramString.equals(str))))
            {
              a.ad.runOnUiThread(new ay(this));
              return;
            }
          } while (str == null);
          paramList = a.a(paramList, am.bE(str));
        } while (paramList == null);
        if (!am.aA(paramList)) {
          if (!a.e(str)) {
            break label344;
          }
        }
        for (paramList = a.f(am.bk(paramList));; paramList = am.bk(paramList))
        {
          a.w = d.a(a.ad).j(paramList);
          a.ad.runOnUiThread(new az(this));
          return;
        }
        if ((paramString != null) && (paramString.equals(str)))
        {
          a.J = true;
          return;
        }
        if (((i == 4) && ((paramInt & i) == 4)) || ((i == 2) && ((paramInt & i) == 2)) || ((i == 8) && ((paramInt & i) == 8)) || ((i == 16) && ((paramInt & i) == 16)) || ((i == 32) && ((i & paramInt) == 32)))
        {
          a.J = true;
          return;
        }
      } while (str == null);
      paramString = a.a(paramList, am.bE(str));
      if (paramString != null)
      {
        if (!am.aA(paramString))
        {
          if (!a.e(str)) {
            break label531;
          }
          paramList = a.f(a.a(paramString));
        }
        for (;;)
        {
          a.w = d.a(a.ad).j(paramList);
          a.J = true;
          return;
          paramString = a.a(paramString);
          paramList = paramString;
          if (am.aw(paramString))
          {
            paramList = paramString;
            if ("pcs".equals(am.an(paramString)))
            {
              paramList = paramString;
              if (am.ag(paramString).equals("/")) {
                paramList = a.a(paramString);
              }
            }
          }
        }
      }
    } while (!b.a().c(paramList).contains(a.d(am.bE(str))));
    a.J = true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */