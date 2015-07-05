package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ListView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.util.a;
import com.estrongs.fs.a.b;
import com.estrongs.fs.impl.local.l;

public class ij
  extends cg
{
  private ListView a;
  private im b;
  
  public ij(Context paramContext)
  {
    super(paramContext);
    Object localObject = g.a(paramContext).inflate(2130903239, null);
    setContentView((View)localObject);
    setTitle(2131427814);
    a = ((ListView)((View)localObject).findViewById(2131362696));
    a.setSelector(2130837974);
    localObject = l.l();
    io[] arrayOfio = new io[localObject.length / 3];
    int i = 0;
    if (i < arrayOfio.length)
    {
      if (localObject[(i * 3 + 2)].toLowerCase().equals("ro")) {
        arrayOfio[i] = new io(this, localObject[(i * 3)], localObject[(i * 3 + 1)], "ro");
      }
      for (;;)
      {
        i += 1;
        break;
        arrayOfio[i] = new io(this, localObject[(i * 3)], localObject[(i * 3 + 1)], "rw");
      }
    }
    b = new im(this, mContext, arrayOfio);
    a.setDivider(mContext.getResources().getDrawable(2130838229));
    a.setFocusable(true);
    a.setCacheColorHint(0);
    a.setAdapter(b);
    setConfirmButton(paramContext.getText(2131427339), new ik(this, paramContext));
    setCancelButton(paramContext.getText(2131427340), new il(this));
  }
  
  public static boolean a(Context paramContext)
  {
    ad.a(paramContext).a(true);
    boolean bool = l.a(paramContext, true);
    if (bool)
    {
      paramContext = a.a();
      if (paramContext != null) {
        paramContext.c("Root_Try", "Root_Try");
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
 * Qualified Name:     com.estrongs.android.ui.dialog.ij
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */