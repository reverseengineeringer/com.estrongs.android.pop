package com.estrongs.android.ui.dialog;

import android.content.Context;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ai;

public class im
{
  private Context a;
  private ci b;
  
  public im(Context paramContext)
  {
    a = paramContext;
    b();
  }
  
  public static void a(Context paramContext)
  {
    ai localai = ai.b(paramContext);
    if (!FexApplication.a().m()) {}
    boolean bool;
    int i;
    do
    {
      return;
      bool = localai.s();
      i = localai.q();
    } while ((bool) || (i <= 2));
    new im(paramContext).a();
    localai.a(true);
  }
  
  private void b()
  {
    b = new cv(a).a(2131232236).b(2131232235).c(2131230816, new io(this)).b(2131232234, new in(this)).b();
  }
  
  public void a()
  {
    if (b != null) {
      b.show();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.im
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */