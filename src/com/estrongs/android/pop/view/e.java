package com.estrongs.android.pop.view;

import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.service.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class e
  implements a
{
  e(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    a.m.b(paramString1, paramString2, paramBoolean);
  }
  
  public void a(ArrayList<com.estrongs.android.pop.app.b.f> paramArrayList, Map<String, String> paramMap)
  {
    if ((paramMap == null) || (paramMap.isEmpty()))
    {
      a.m.a(paramArrayList);
      a.runOnUiThread(new g(this));
      return;
    }
    Iterator localIterator = paramMap.keySet().iterator();
    label52:
    String str;
    if (localIterator.hasNext())
    {
      paramArrayList = (String)localIterator.next();
      str = (String)paramArrayList;
      if (paramMap.get(paramArrayList) != null) {
        break label106;
      }
    }
    label106:
    for (paramArrayList = null;; paramArrayList = ((String)paramMap.get(paramArrayList)).toString())
    {
      a.m.b(str, paramArrayList, false);
      break label52;
      break;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    a.runOnUiThread(new f(this, paramBoolean));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */