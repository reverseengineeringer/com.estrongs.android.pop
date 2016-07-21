package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ListView;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.fs.a.b;
import com.estrongs.fs.impl.local.m;

public class is
  extends ci
{
  private ListView a;
  private iv b;
  
  public is(Context paramContext)
  {
    super(paramContext);
    Object localObject = k.a(paramContext).inflate(2130903406, null);
    setContentView((View)localObject);
    setTitle(2131232092);
    a = ((ListView)((View)localObject).findViewById(2131625465));
    a.setSelector(2130838302);
    localObject = m.l();
    ix[] arrayOfix = new ix[localObject.length / 3];
    int i = 0;
    if (i < arrayOfix.length)
    {
      if (localObject[(i * 3 + 2)].toLowerCase().equals("ro")) {
        arrayOfix[i] = new ix(this, localObject[(i * 3)], localObject[(i * 3 + 1)], "ro");
      }
      for (;;)
      {
        i += 1;
        break;
        arrayOfix[i] = new ix(this, localObject[(i * 3)], localObject[(i * 3 + 1)], "rw");
      }
    }
    b = new iv(this, mContext, arrayOfix);
    a.setDivider(mContext.getResources().getDrawable(2130838600));
    a.setFocusable(true);
    a.setCacheColorHint(0);
    a.setAdapter(b);
    setConfirmButton(paramContext.getText(2131231270), new it(this, paramContext));
    setCancelButton(paramContext.getText(2131231265), new iu(this));
  }
  
  public static boolean a(Context paramContext)
  {
    ad.a(paramContext).a(true);
    boolean bool = m.a(paramContext, true);
    if (bool)
    {
      paramContext = c.a(paramContext);
      if (paramContext != null) {
        paramContext.a("Root_Try");
      }
    }
    for (;;)
    {
      b.a().c();
      return bool;
      ad.a(paramContext).a(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.is
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */