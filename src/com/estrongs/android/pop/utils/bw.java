package com.estrongs.android.pop.utils;

import android.widget.TextView;
import com.estrongs.a.a;
import com.estrongs.a.a.l;
import com.estrongs.a.a.m;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.fs.util.j;

class bw
  implements l
{
  private long f = -1L;
  
  bw(bn parambn, StringBuilder paramStringBuilder, String paramString, ESActivity paramESActivity, TextView paramTextView) {}
  
  public void a(a parama, m paramm)
  {
    if ((f == -1L) || (System.currentTimeMillis() - f > 300L))
    {
      f = System.currentTimeMillis();
      a.delete(0, a.length());
      a.append(b).append("\n\n").append(c.getString(2131427581)).append(d).append(" ").append(c.getString(2131427428)).append(", ").append(c.getString(2131427580)).append(j.c(f));
      c.runOnUiThread(new bx(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.bw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */