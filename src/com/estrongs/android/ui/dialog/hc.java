package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.adapter.e;
import com.estrongs.android.ui.adapter.f;
import com.estrongs.android.util.ap;

public class hc
  extends gx
{
  private f n;
  
  public hc(Context paramContext)
  {
    super(paramContext);
  }
  
  private void a(View paramView)
  {
    View localView = paramView.findViewById(2131624644);
    b(localView, 0);
    ((ImageView)localView.findViewById(2131624054)).setImageResource(2130837954);
    ((TextView)localView.findViewById(2131624537)).setText(2131231598);
    localView = paramView.findViewById(2131624645);
    b(localView, 1);
    ((ImageView)localView.findViewById(2131624054)).setImageResource(2130837956);
    ((TextView)localView.findViewById(2131624537)).setText(2131231138);
    paramView.findViewById(2131624646).setVisibility(8);
  }
  
  private void b(View paramView, int paramInt)
  {
    n.getView(paramInt, paramView, null).setOnClickListener(new he(this, paramInt));
  }
  
  protected void a()
  {
    Object localObject = (ScrollView)k.a(mContext).inflate(2130903187, null);
    d = ((ScrollView)localObject).findViewById(2131624199);
    e = d.findViewById(2131624643);
    f = d.findViewById(2131624647);
    f.setVisibility(8);
    g = d.findViewById(2131624648);
    g.setVisibility(8);
    n = new hd(this, mContext);
    n.a();
    a(e);
    i = ((ScrollView)localObject).findViewById(2131624651);
    j = i.findViewById(2131624643);
    k = i.findViewById(2131624647);
    a = new e(mContext);
    a(j, 0);
    a(k, 1);
    setContentView((View)localObject);
    ((ScrollView)localObject).setScrollbarFadingEnabled(false);
    if (!(ad.a(mContext).al() | ad.a(mContext).an()))
    {
      i.setVisibility(8);
      ((ScrollView)localObject).findViewById(2131624649).setVisibility(8);
    }
    localObject = null;
    if (FileExplorerActivity.X() != null) {
      localObject = FileExplorerActivity.X().P();
    }
    if ((localObject != null) && (ap.aX((String)localObject)))
    {
      a(1);
      a(2);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.hc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */