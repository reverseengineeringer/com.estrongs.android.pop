package com.estrongs.android.pop.utils;

import android.app.Activity;
import android.widget.TextView;
import com.estrongs.a.a;
import com.estrongs.a.a.m;
import com.estrongs.a.a.p;
import com.estrongs.fs.util.j;

class cd
  implements p
{
  cd(bv parambv, StringBuilder paramStringBuilder, Activity paramActivity, TextView paramTextView) {}
  
  public void a(a parama, int paramInt1, int paramInt2)
  {
    if ((paramInt2 == 5) || (paramInt2 == 4))
    {
      a.delete(0, a.length());
      a.append(b.getString(2131232206)).append(processData.d).append(" ").append(b.getString(2131231132)).append(", ").append(b.getString(2131232218)).append(j.c(processData.f));
      b.runOnUiThread(new ce(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.cd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */