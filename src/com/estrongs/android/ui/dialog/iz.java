package com.estrongs.android.ui.dialog;

import android.app.Activity;
import com.estrongs.a.a;
import com.estrongs.android.ui.notification.e;
import java.util.Map;

class iz
  extends e
{
  iz(ix paramix, Activity paramActivity, CharSequence paramCharSequence, a parama)
  {
    super(paramActivity, paramCharSequence, parama);
  }
  
  protected void a(a parama)
  {
    ix.e.remove(Long.valueOf(parama.getTaskId()));
  }
  
  protected void b(a parama)
  {
    ix.e.remove(Long.valueOf(parama.getTaskId()));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.iz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */