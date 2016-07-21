package com.estrongs.fs.b;

import android.content.res.Resources;
import com.estrongs.a.q;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.ap;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.util.a;
import com.estrongs.fs.util.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

class ak
  extends ao
{
  boolean a = true;
  boolean b = false;
  Map<String, b> c = new HashMap();
  List<h> d = new ArrayList();
  
  public ak(List<h> paramList, d paramd)
  {
    super(paramList, paramd, false);
  }
  
  protected boolean a(h paramh)
  {
    if (paramh.getAbsolutePath().endsWith(".eslock"))
    {
      paramh = new Exception(FexApplication.a().getResources().getString(2131231450));
      setTaskResult(10000, new q(paramh.getMessage(), paramh));
      return false;
    }
    String str = ap.bV(paramh.getAbsolutePath());
    b localb = (b)a.a.get(str);
    if (localb == null) {
      a = false;
    }
    for (;;)
    {
      d.add(paramh);
      return true;
      c.put(str, localb);
      b = true;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */