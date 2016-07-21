package com.estrongs.android.ui.dialog;

import android.app.Activity;
import com.estrongs.a.a;
import com.estrongs.android.ui.notification.f;
import java.util.Map;

class jj
  extends f
{
  jj(jh paramjh, Activity paramActivity, CharSequence paramCharSequence, a parama)
  {
    super(paramActivity, paramCharSequence, parama);
  }
  
  protected void a(a parama)
  {
    jh.e.remove(Long.valueOf(parama.getTaskId()));
  }
  
  protected void b(a parama)
  {
    jh.e.remove(Long.valueOf(parama.getTaskId()));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.jj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */