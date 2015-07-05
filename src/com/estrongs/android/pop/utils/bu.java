package com.estrongs.android.pop.utils;

import android.widget.TextView;
import com.estrongs.a.a;
import com.estrongs.a.a.m;
import com.estrongs.a.a.p;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.fs.util.j;

class bu
  implements p
{
  bu(bn parambn, StringBuilder paramStringBuilder, String paramString, ESActivity paramESActivity, TextView paramTextView) {}
  
  public void a(a parama, int paramInt1, int paramInt2)
  {
    if ((paramInt2 == 5) || (paramInt2 == 4))
    {
      a.delete(0, a.length());
      a.append(b).append("\n\n").append(c.getString(2131427581)).append(processData.d).append(" ").append(c.getString(2131427428)).append(", ").append(c.getString(2131427580)).append(j.c(processData.f));
      c.runOnUiThread(new bv(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */