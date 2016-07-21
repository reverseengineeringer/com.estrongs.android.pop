package com.estrongs.android.ui.b;

import android.app.Activity;
import com.estrongs.a.a;
import com.estrongs.android.ui.dialog.jh;
import java.util.Map;

class h
  extends com.estrongs.android.ui.notification.f
{
  h(f paramf, Activity paramActivity, CharSequence paramCharSequence, a parama)
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
 * Qualified Name:     com.estrongs.android.ui.b.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */