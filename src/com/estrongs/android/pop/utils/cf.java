package com.estrongs.android.pop.utils;

import android.app.Activity;
import android.widget.TextView;
import com.estrongs.a.a;
import com.estrongs.a.a.l;
import com.estrongs.a.a.m;
import com.estrongs.fs.util.j;

class cf
  implements l
{
  private long e = -1L;
  
  cf(bv parambv, StringBuilder paramStringBuilder, Activity paramActivity, TextView paramTextView) {}
  
  public void a(a parama, m paramm)
  {
    if ((e == -1L) || (System.currentTimeMillis() - e > 300L))
    {
      e = System.currentTimeMillis();
      a.delete(0, a.length());
      a.append(b.getString(2131232206)).append(d).append(" ").append(b.getString(2131231132)).append(", ").append(b.getString(2131232218)).append(j.c(f));
      b.runOnUiThread(new cg(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.cf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */