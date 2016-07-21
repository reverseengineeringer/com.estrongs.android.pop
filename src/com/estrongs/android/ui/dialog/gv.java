package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.adapter.e;

public class gv
  extends ci
{
  private e a;
  private ha b;
  private View c;
  private View d;
  private View e;
  private final int f = 4;
  
  public gv(Context paramContext)
  {
    super(paramContext);
    setTitle(2131230895);
    a(false, 0);
  }
  
  public gv(Context paramContext, int paramInt)
  {
    super(paramContext);
    setTitle(2131230895);
    a(true, paramInt);
  }
  
  private void a(View paramView, int paramInt)
  {
    b(paramView.findViewById(2131624644), paramInt * 4);
    b(paramView.findViewById(2131624645), paramInt * 4 + 1);
    b(paramView.findViewById(2131624646), paramInt * 4 + 2);
    b(paramView.findViewById(2131624653), paramInt * 4 + 3);
  }
  
  private void b(View paramView, int paramInt)
  {
    a.getView(paramInt, paramView, null).setOnClickListener(new gw(this, paramInt));
  }
  
  public void a(ha paramha)
  {
    b = paramha;
  }
  
  protected void a(boolean paramBoolean, int paramInt)
  {
    View localView = k.a(mContext).inflate(2130903187, null);
    localView.findViewById(2131624199).setVisibility(8);
    localView.findViewById(2131624649).setVisibility(8);
    c = localView.findViewById(2131624651);
    d = c.findViewById(2131624643);
    e = c.findViewById(2131624647);
    a = new e(mContext);
    if (paramBoolean) {
      a.a(paramInt);
    }
    a(d, 0);
    a(e, 1);
    setContentView(localView);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.gv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */