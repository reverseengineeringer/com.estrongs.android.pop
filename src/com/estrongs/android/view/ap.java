package com.estrongs.android.view;

import com.estrongs.android.pop.app.compress.ai;
import com.estrongs.android.pop.app.compress.aw;
import com.estrongs.android.pop.app.compress.ax;
import com.estrongs.fs.impl.d.a;
import com.estrongs.fs.impl.local.f;
import java.io.File;
import java.util.LinkedList;
import java.util.Map;

class ap
  implements aw
{
  ap(ao paramao) {}
  
  public void a(ai paramai)
  {
    a locala = new a(new f(new File(a)));
    a.b.H.addFirst(locala);
    ak.v().put(a, new ax(a.b.ag, paramai));
    a.b.a_(a.b.H);
    a.b.i.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */