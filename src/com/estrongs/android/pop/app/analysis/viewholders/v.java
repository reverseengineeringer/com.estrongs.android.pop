package com.estrongs.android.pop.app.analysis.viewholders;

import android.content.Context;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.app.analysis.b.aj;
import com.estrongs.android.pop.app.analysis.n;
import com.estrongs.android.ui.dialog.ci;

public class v
  extends RecyclerView.ViewHolder
{
  public ImageView a;
  public ImageView b;
  public TextView c;
  public TextView d;
  public TextView e;
  public View f;
  private Context g;
  private ci h;
  private TextView i;
  private TextView j;
  private TextView k;
  private TextView l;
  
  public v(Context paramContext, View paramView)
  {
    super(paramView);
    g = paramContext;
    a = ((ImageView)paramView.findViewById(2131624300));
    b = ((ImageView)paramView.findViewById(2131624301));
    c = ((TextView)paramView.findViewById(2131624302));
    f = paramView.findViewById(2131624303);
    d = ((TextView)paramView.findViewById(2131624304));
    e = ((TextView)paramView.findViewById(2131624305));
  }
  
  private void a(aj paramaj)
  {
    if (paramaj == null) {
      return;
    }
    if (h == null)
    {
      h = new ci(g);
      h.setTitle(2131230949);
      h.setContentView(2130903183);
      i = ((TextView)h.findViewById(2131624628));
      l = ((TextView)h.findViewById(2131624634));
      k = ((TextView)h.findViewById(2131624632));
      j = ((TextView)h.findViewById(2131624630));
      h.hideAllButtons();
    }
    i.setText(e);
    l.setText(d.d);
    k.setText(d.c);
    j.setText(d.b);
    h.show();
  }
  
  public void a()
  {
    f.setVisibility(8);
  }
  
  public void a(aj paramaj, boolean paramBoolean)
  {
    if (d != null)
    {
      c.setText(d.a);
      a.setImageResource(d.f);
      d.setText(d.c);
      if (paramBoolean) {
        break label120;
      }
      f.setVisibility(8);
      b.setImageResource(2130838008);
    }
    for (;;)
    {
      f.setOnClickListener(new w(this, paramaj));
      return;
      c.setText(e);
      d.setText("");
      a.setImageResource(2130838043);
      break;
      label120:
      f.setVisibility(0);
      b.setImageResource(2130838044);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.viewholders.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */