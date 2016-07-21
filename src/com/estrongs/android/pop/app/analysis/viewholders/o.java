package com.estrongs.android.pop.app.analysis.viewholders;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.appinfo.AppFolderInfoManager;
import com.estrongs.fs.h;
import com.estrongs.fs.util.j;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.List;

public class o
  extends n
{
  public TextView a;
  public TextView b;
  public ImageView c;
  public ImageView d;
  public TextView e;
  public TextView f;
  public TextView g;
  public TextView h;
  public TextView i;
  public TextView j;
  public LinearLayout k;
  private LinearLayout l;
  private TextView m;
  private ImageView n;
  
  public o(View paramView)
  {
    super(paramView);
    a = ((TextView)paramView.findViewById(2131624185));
    b = ((TextView)paramView.findViewById(2131624186));
    c = ((ImageView)paramView.findViewById(2131624187));
    d = ((ImageView)paramView.findViewById(2131624191));
    e = ((TextView)paramView.findViewById(2131624188));
    f = ((TextView)paramView.findViewById(2131624189));
    g = ((TextView)paramView.findViewById(2131624192));
    h = ((TextView)paramView.findViewById(2131624193));
    i = ((TextView)paramView.findViewById(2131624190));
    j = ((TextView)paramView.findViewById(2131624194));
    k = ((LinearLayout)paramView.findViewById(2131624174));
    l = ((LinearLayout)paramView.findViewById(2131624195));
    m = ((TextView)paramView.findViewById(2131624196));
    n = ((ImageView)paramView.findViewById(2131624180));
  }
  
  private void a(com.estrongs.android.b.a.a.a parama)
  {
    c.setImageResource(s);
    e.setText(t);
    a(f, u);
    if (v != 0) {
      d.setImageResource(v);
    }
    g.setText(w);
    a(h, x);
  }
  
  private void a(com.estrongs.android.b.a.a.a parama, Context paramContext)
  {
    if (parama.f() != null) {
      a(parama.f(), c);
    }
    e.setText(t);
    if (parama.g() != null) {
      a(parama.g(), d);
    }
    g.setText(w);
    if (parama.m().equals("appcatalog"))
    {
      b(parama);
      if (parama.f() != null)
      {
        String str = parama.f().getExtra("child_count") + " " + paramContext.getString(2131231325);
        i.setText(str);
      }
      if (parama.g() != null)
      {
        paramContext = parama.g().getExtra("child_count") + " " + paramContext.getString(2131231325);
        j.setText(paramContext);
      }
      if (!TextUtils.isEmpty(parama.p()))
      {
        i.setVisibility(8);
        d.setVisibility(8);
      }
    }
    for (;;)
    {
      a(f, u);
      a(h, x);
      if (parama.g() != null) {
        break;
      }
      k.setVisibility(8);
      return;
      i.setText(j.c(y));
      if (parama.g() != null) {
        j.setText(j.c(z));
      }
    }
    k.setVisibility(0);
  }
  
  private void b(com.estrongs.android.b.a.a.a parama)
  {
    if (parama == null) {}
    ArrayList localArrayList;
    do
    {
      return;
      localArrayList = new ArrayList();
      h localh = parama.f();
      if (localh != null) {
        localArrayList.add(localh);
      }
      localh = parama.g();
      if (localh != null) {
        localArrayList.add(localh);
      }
    } while (localArrayList.size() == 0);
    AppFolderInfoManager.d().a("appfolder://", localArrayList, new p(this, parama));
  }
  
  public void a(com.estrongs.android.b.a.a parama, Context paramContext)
  {
    if (!(parama instanceof com.estrongs.android.b.a.a.a)) {
      return;
    }
    parama = (com.estrongs.android.b.a.a.a)parama;
    a.setText(parama.o());
    if (!parama.m().equals("sensitive_permission"))
    {
      b.setVisibility(8);
      i.setVisibility(0);
      j.setVisibility(0);
      a(parama, paramContext);
    }
    while (parama.q())
    {
      l.setBackgroundResource(2130837586);
      m.setTextColor(paramContext.getResources().getColor(2131558745));
      n.setImageResource(2130837668);
      return;
      b.setVisibility(0);
      i.setVisibility(8);
      j.setVisibility(8);
      String str = MessageFormat.format(paramContext.getString(2131230944), new Object[] { Integer.valueOf(A), Integer.valueOf(B) });
      b.setText(str);
      a(parama);
    }
    l.setBackgroundResource(2131558728);
    m.setTextColor(paramContext.getResources().getColor(2131558455));
    n.setImageResource(2130837665);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.viewholders.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */