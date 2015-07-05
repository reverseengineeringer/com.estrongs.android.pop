package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.a.e;
import com.estrongs.android.ui.a.f;
import com.estrongs.android.util.am;

public class gz
  extends gu
{
  private f n;
  
  public gz(Context paramContext)
  {
    super(paramContext);
  }
  
  private void a(View paramView)
  {
    View localView = paramView.findViewById(2131362079);
    b(localView, 0);
    ((ImageView)localView.findViewById(2131361853)).setImageResource(2130837694);
    ((TextView)localView.findViewById(2131361997)).setText(2131428055);
    localView = paramView.findViewById(2131362080);
    b(localView, 1);
    ((ImageView)localView.findViewById(2131361853)).setImageResource(2130837696);
    ((TextView)localView.findViewById(2131361997)).setText(2131427421);
    paramView.findViewById(2131362081).setVisibility(8);
  }
  
  private void b(View paramView, int paramInt)
  {
    n.getView(paramInt, paramView, null).setOnClickListener(new hb(this, paramInt));
  }
  
  protected void a()
  {
    Object localObject = (ScrollView)g.a(mContext).inflate(2130903099, null);
    d = ((ScrollView)localObject).findViewById(2131362077);
    e = d.findViewById(2131362078);
    f = d.findViewById(2131362082);
    f.setVisibility(8);
    g = d.findViewById(2131362083);
    g.setVisibility(8);
    n = new ha(this, mContext);
    n.a();
    a(e);
    i = ((ScrollView)localObject).findViewById(2131362086);
    j = i.findViewById(2131362078);
    k = i.findViewById(2131362082);
    a = new e(mContext);
    a(j, 0);
    a(k, 1);
    setContentView((View)localObject);
    ((ScrollView)localObject).setScrollbarFadingEnabled(false);
    if (!(ad.a(mContext).ak() | ad.a(mContext).am()))
    {
      i.setVisibility(8);
      ((ScrollView)localObject).findViewById(2131362084).setVisibility(8);
    }
    localObject = null;
    if (FileExplorerActivity.J() != null) {
      localObject = FileExplorerActivity.J().z();
    }
    if ((localObject != null) && (am.aN((String)localObject)))
    {
      a(1);
      a(2);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.gz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */