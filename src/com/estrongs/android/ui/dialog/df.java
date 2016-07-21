package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.util.q;
import java.util.LinkedList;
import java.util.List;

public class df
  extends ci
{
  static List<q<Integer, Integer>> a = new LinkedList();
  private je b;
  private dh c;
  private View d;
  private View e;
  private View f;
  private final int g = 3;
  
  static
  {
    a.add(new q(Integer.valueOf(0), Integer.valueOf(0)));
    a.add(new q(Integer.valueOf(1), Integer.valueOf(2)));
    a.add(new q(Integer.valueOf(2), Integer.valueOf(4)));
    a.add(new q(Integer.valueOf(3), Integer.valueOf(1)));
    a.add(new q(Integer.valueOf(4), Integer.valueOf(3)));
    a.add(new q(Integer.valueOf(5), Integer.valueOf(5)));
  }
  
  public df(Context paramContext)
  {
    super(paramContext);
    setTitle(2131230895);
    a();
  }
  
  private void a(View paramView, int paramInt)
  {
    b(paramView.findViewById(2131624644), paramInt * 3);
    b(paramView.findViewById(2131624645), paramInt * 3 + 1);
    b(paramView.findViewById(2131624646), paramInt * 3 + 2);
  }
  
  private void b(View paramView, int paramInt)
  {
    b.getView(paramInt, paramView, null).setOnClickListener(new dg(this, paramInt));
  }
  
  protected void a()
  {
    View localView = k.a(mContext).inflate(2130903187, null);
    localView.findViewById(2131624199).setVisibility(8);
    localView.findViewById(2131624649).setVisibility(8);
    d = localView.findViewById(2131624651);
    d.findViewById(2131624652).findViewById(2131624653).setVisibility(8);
    d.findViewById(2131624643).findViewById(2131624653).setVisibility(8);
    d.findViewById(2131624647).findViewById(2131624653).setVisibility(8);
    e = d.findViewById(2131624643);
    f = d.findViewById(2131624647);
    b = new je(mContext);
    a(e, 0);
    a(f, 1);
    setContentView(localView);
  }
  
  public void a(dh paramdh)
  {
    c = paramdh;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.df
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */