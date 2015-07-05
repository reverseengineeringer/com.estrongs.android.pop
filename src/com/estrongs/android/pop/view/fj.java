package com.estrongs.android.pop.view;

import com.estrongs.android.ui.pcs.n;
import com.estrongs.android.view.aw;
import java.util.Iterator;
import java.util.List;

class fj
  implements n
{
  fj(fi paramfi) {}
  
  public void a(boolean paramBoolean, String paramString1, String paramString2)
  {
    if (paramBoolean)
    {
      paramString2 = a.a.a.x.iterator();
      while (paramString2.hasNext())
      {
        paramString1 = (aw)paramString2.next();
        if ((paramString1 == fh.a(a.a)) && (fh.a(a.a) != null))
        {
          paramString2 = paramString1.E();
          paramString1.a(fh.b(a.a), paramString2);
          a.a.a.E();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.fj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */