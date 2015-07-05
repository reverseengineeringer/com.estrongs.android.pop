package com.estrongs.android.pop.app.imageviewer.gallery;

import android.net.Uri;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.utils.cd;
import com.estrongs.android.pop.utils.ci;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bc;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.n;
import com.estrongs.fs.util.a.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class d
  implements f
{
  private List<e> a = new LinkedList();
  private com.estrongs.fs.d b;
  private com.estrongs.android.pop.m c = null;
  
  public d(com.estrongs.fs.d paramd, String paramString1, String paramString2, i parami, a parama, com.estrongs.android.pop.m paramm)
  {
    b = paramd;
    c = paramm;
    a(paramString1, paramString2, parami, parama);
  }
  
  private void a(String paramString1, String paramString2, i parami, a parama)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    int i = 0;
    for (;;)
    {
      try
      {
        String str = am.e(paramString1);
        if (!str.endsWith("/"))
        {
          str = str + "/";
          Object localObject = am.e(paramString2);
          paramString2 = (String)localObject;
          if (!((String)localObject).endsWith("/")) {
            paramString2 = (String)localObject + "/";
          }
          if (parami == null)
          {
            paramString2 = com.estrongs.fs.d.a(null);
            if ((am.bb(str)) || (am.aW(str))) {
              break label321;
            }
            label115:
            paramString2 = paramString2.a(str, bool1);
            break label327;
          }
          localObject = com.estrongs.fs.d.a(null);
          paramString2 = new n(str, paramString2, com.estrongs.fs.m.a, null);
          if (am.bb(str)) {
            break label332;
          }
          bool1 = bool2;
          if (am.aW(str)) {
            break label332;
          }
          paramString2 = ((com.estrongs.fs.d)localObject).a(paramString2, bool1, parami);
        }
      }
      catch (Exception paramString2)
      {
        paramString2 = null;
      }
      label321:
      label327:
      do
      {
        try
        {
          Collections.sort(paramString2, parama);
          if (i >= paramString2.size()) {
            break label331;
          }
          parami = (h)paramString2.get(i);
          if (parami == null) {}
          for (;;)
          {
            i += 1;
            break;
            parama = parami.getFileType();
            if ((parama == null) || (!parama.a()))
            {
              parama = parami.getAbsolutePath();
              if ((bc.b(parami)) || (am.e(parama, paramString1)))
              {
                parami = new c(this, b, parami);
                parami.a(cd.c(parama));
                a.add(parami);
              }
            }
          }
        }
        catch (Exception parami)
        {
          for (;;) {}
        }
        break;
        bool1 = false;
        break label115;
      } while (paramString2 != null);
      label331:
      return;
      label332:
      bool1 = false;
    }
  }
  
  public int a(e parame)
  {
    return a.indexOf(parame);
  }
  
  public e a(int paramInt)
  {
    return (e)a.get(paramInt);
  }
  
  public e a(Uri paramUri)
  {
    String str1 = paramUri.getPath();
    if ("search".equals(paramUri.getScheme())) {
      str1 = paramUri.toString();
    }
    Iterator localIterator = a.iterator();
    if (localIterator.hasNext())
    {
      e locale = (e)localIterator.next();
      String str2 = locale.d();
      if (("file".equals(paramUri.getScheme())) && (!str2.startsWith("file://")))
      {
        str1 = paramUri.getPath();
        label89:
        if (am.e(str2, str1)) {
          return locale;
        }
      }
      else if ("search".equals(paramUri.getScheme()))
      {
        c localc = (c)locale;
        if (localc.a() == null) {
          break label154;
        }
        str2 = localc.a().getPath();
      }
    }
    label154:
    for (;;)
    {
      break label89;
      str1 = paramUri.toString();
      break label89;
      break;
      return null;
    }
  }
  
  public void a()
  {
    a.clear();
  }
  
  public int b()
  {
    return a.size();
  }
  
  public boolean b(int paramInt)
  {
    return b(a(paramInt));
  }
  
  public boolean b(e parame)
  {
    Object localObject2 = (c)parame;
    Object localObject1 = new ArrayList(1);
    if (((c)localObject2).a() == null)
    {
      ((List)localObject1).add(b.j(((c)localObject2).d()));
      boolean bool2 = ad.a(FexApplication.a()).aD();
      localObject2 = parame.d();
      bool1 = bool2;
      if (bool2) {
        if (ci.a((String)localObject2) != ci.c) {
          break label158;
        }
      }
    }
    label158:
    for (boolean bool1 = true;; bool1 = false)
    {
      localObject1 = new ab(b, (List)localObject1, false, bool1);
      if (c != null) {
        ((ab)localObject1).setTaskDecisionListener(c);
      }
      ((ab)localObject1).execute(false);
      if (((ab)localObject1).getTaskStatus() != 4) {
        break label163;
      }
      a.remove(parame);
      return true;
      ((List)localObject1).add(((c)localObject2).a());
      break;
    }
    label163:
    return false;
  }
  
  public boolean c()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.gallery.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */