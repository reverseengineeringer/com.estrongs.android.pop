package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.util.o;
import java.util.LinkedList;
import java.util.List;

public class dd
  extends cg
{
  static List<o<Integer, Integer>> a = new LinkedList();
  private iv b;
  private df c;
  private View d;
  private View e;
  private View f;
  private final int g = 3;
  
  static
  {
    a.add(new o(Integer.valueOf(0), Integer.valueOf(0)));
    a.add(new o(Integer.valueOf(1), Integer.valueOf(2)));
    a.add(new o(Integer.valueOf(2), Integer.valueOf(4)));
    a.add(new o(Integer.valueOf(3), Integer.valueOf(1)));
    a.add(new o(Integer.valueOf(4), Integer.valueOf(3)));
    a.add(new o(Integer.valueOf(5), Integer.valueOf(5)));
  }
  
  public dd(Context paramContext)
  {
    super(paramContext);
    setTitle(2131427391);
    a();
  }
  
  private void a(View paramView, int paramInt)
  {
    b(paramView.findViewById(2131362079), paramInt * 3);
    b(paramView.findViewById(2131362080), paramInt * 3 + 1);
    b(paramView.findViewById(2131362081), paramInt * 3 + 2);
  }
  
  private void b(View paramView, int paramInt)
  {
    b.getView(paramInt, paramView, null).setOnClickListener(new de(this, paramInt));
  }
  
  protected void a()
  {
    View localView = g.a(mContext).inflate(2130903099, null);
    localView.findViewById(2131362077).setVisibility(8);
    localView.findViewById(2131362084).setVisibility(8);
    d = localView.findViewById(2131362086);
    d.findViewById(2131362087).findViewById(2131362088).setVisibility(8);
    d.findViewById(2131362078).findViewById(2131362088).setVisibility(8);
    d.findViewById(2131362082).findViewById(2131362088).setVisibility(8);
    e = d.findViewById(2131362078);
    f = d.findViewById(2131362082);
    b = new iv(mContext);
    a(e, 0);
    a(f, 1);
    setContentView(localView);
  }
  
  public void a(df paramdf)
  {
    c = paramdf;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.dd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */