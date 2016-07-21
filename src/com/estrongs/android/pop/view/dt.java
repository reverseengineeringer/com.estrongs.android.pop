package com.estrongs.android.pop.view;

import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.f.f;
import com.estrongs.android.pop.app.service.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class dt
  implements a
{
  dt(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    a.k.b(paramString1, paramString2, paramBoolean);
  }
  
  public void a(ArrayList<f> paramArrayList, Map<String, String> paramMap)
  {
    if ((paramMap == null) || (paramMap.isEmpty()))
    {
      a.k.a(paramArrayList);
      a.runOnUiThread(new dv(this));
      return;
    }
    Iterator localIterator = paramMap.keySet().iterator();
    label52:
    String str;
    if (localIterator.hasNext())
    {
      paramArrayList = localIterator.next();
      str = (String)paramArrayList;
      if (paramMap.get(paramArrayList) != null) {
        break label103;
      }
    }
    label103:
    for (paramArrayList = null;; paramArrayList = ((String)paramMap.get(paramArrayList)).toString())
    {
      a.k.b(str, paramArrayList, false);
      break label52;
      break;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    a.runOnUiThread(new du(this, paramBoolean));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.dt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */