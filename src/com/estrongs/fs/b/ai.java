package com.estrongs.fs.b;

import android.content.res.Resources;
import com.estrongs.a.q;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.util.a;
import com.estrongs.fs.util.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

class ai
  extends am
{
  boolean a = true;
  boolean b = false;
  Map<String, b> c = new HashMap();
  List<h> d = new ArrayList();
  
  public ai(List<h> paramList, d paramd)
  {
    super(paramList, paramd, false);
  }
  
  protected boolean a(h paramh)
  {
    if (paramh.getAbsolutePath().endsWith(".eslock"))
    {
      paramh = new Exception(FexApplication.a().getResources().getString(2131428488));
      setTaskResult(10000, new q(paramh.getMessage(), paramh));
      return false;
    }
    String str = com.estrongs.android.util.am.bE(paramh.getAbsolutePath());
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
 * Qualified Name:     com.estrongs.fs.b.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */