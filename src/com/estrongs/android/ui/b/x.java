package com.estrongs.android.ui.b;

import android.os.Handler;
import com.estrongs.a.a;
import com.estrongs.a.a.o;
import com.estrongs.fs.h;
import java.util.ArrayList;
import org.json.JSONObject;

class x
  implements o
{
  ArrayList<h> a = new ArrayList();
  
  x(u paramu) {}
  
  public void a(a parama, boolean paramBoolean)
  {
    if (parama.summary().optBoolean("need_reload")) {
      u.j(b).post(new y(this));
    }
  }
  
  public void a(h paramh)
  {
    a.clear();
    if (paramh != null) {
      a.add(paramh);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.b.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */