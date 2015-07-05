package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface.OnDismissListener;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ExpandableListAdapter;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.a.q;
import com.estrongs.android.ui.view.NaviListView;

public class ip
{
  private cg a;
  private Context b;
  private String c;
  
  public ip(Context paramContext)
  {
    b = paramContext;
    d();
  }
  
  private void d()
  {
    View localView = g.a(b).inflate(2130903098, null);
    NaviListView localNaviListView = (NaviListView)localView.findViewById(2131362074);
    Object localObject = new iq(this, localNaviListView);
    localObject = new q(b, (Handler)localObject);
    localNaviListView.setAdapter((ExpandableListAdapter)localObject);
    localNaviListView.setOnGroupClickListener(new ir(this));
    localNaviListView.setOnChildClickListener(new iu(this, (q)localObject));
    a = new ct(b).a(localView).a(2131428351).b();
  }
  
  public String a()
  {
    return c;
  }
  
  public void a(DialogInterface.OnDismissListener paramOnDismissListener)
  {
    a.setOnDismissListener(paramOnDismissListener);
  }
  
  public void b()
  {
    a.show();
  }
  
  public void c()
  {
    a.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */