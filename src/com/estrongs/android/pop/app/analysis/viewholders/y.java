package com.estrongs.android.pop.app.analysis.viewholders;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.appinfo.AppFolderInfoManager;
import com.estrongs.android.b.a.a;
import com.estrongs.android.b.a.a.b;
import com.estrongs.fs.h;
import com.estrongs.fs.util.j;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.List;

public class y
  extends n
{
  public TextView a;
  public TextView b;
  public TextView c;
  public ImageView d;
  public ImageView e;
  public TextView f;
  public TextView g;
  public TextView h;
  public TextView i;
  public TextView j;
  public TextView k;
  public LinearLayout l;
  public LinearLayout m;
  public LinearLayout n;
  public LinearLayout o;
  public LinearLayout p;
  public TextView q;
  public LinearLayout r;
  public ImageView s;
  public TextView t;
  public ImageView u;
  
  public y(View paramView)
  {
    super(paramView);
    a = ((TextView)paramView.findViewById(2131624163));
    c = ((TextView)paramView.findViewById(2131624168));
    d = ((ImageView)paramView.findViewById(2131624170));
    e = ((ImageView)paramView.findViewById(2131624175));
    f = ((TextView)paramView.findViewById(2131624171));
    g = ((TextView)paramView.findViewById(2131624172));
    h = ((TextView)paramView.findViewById(2131624176));
    i = ((TextView)paramView.findViewById(2131624177));
    j = ((TextView)paramView.findViewById(2131624173));
    k = ((TextView)paramView.findViewById(2131624178));
    l = ((LinearLayout)paramView.findViewById(2131624165));
    m = ((LinearLayout)paramView.findViewById(2131624169));
    n = ((LinearLayout)paramView.findViewById(2131624179));
    o = ((LinearLayout)paramView.findViewById(2131624181));
    q = ((TextView)paramView.findViewById(2131624183));
    b = ((TextView)paramView.findViewById(2131624164));
    p = ((LinearLayout)paramView.findViewById(2131624174));
    r = ((LinearLayout)paramView.findViewById(2131624166));
    s = ((ImageView)paramView.findViewById(2131624167));
    t = ((TextView)paramView.findViewById(2131624121));
    u = ((ImageView)paramView.findViewById(2131624180));
  }
  
  private void a(b paramb)
  {
    if (paramb == null) {}
    ArrayList localArrayList;
    do
    {
      return;
      localArrayList = new ArrayList();
      h localh = paramb.f();
      if (localh != null) {
        localArrayList.add(localh);
      }
      localh = paramb.g();
      if (localh != null) {
        localArrayList.add(localh);
      }
    } while (localArrayList.size() == 0);
    AppFolderInfoManager.d().a("appfolder://", localArrayList, new z(this, paramb));
  }
  
  private void a(b paramb, Context paramContext)
  {
    if (paramb.f() != null) {
      a(paramb.f(), d);
    }
    f.setText(u);
    a(g, v);
    if ((paramb.m().equals("appcatalog")) || (paramb.m().equals("apprelationfile")))
    {
      a(paramb);
      if (paramb.m().equals("apprelationfile"))
      {
        j.setText("");
        k.setText("");
      }
    }
    while (paramb.g() != null)
    {
      p.setVisibility(0);
      a(paramb.g(), e);
      h.setText(x);
      a(i, y);
      return;
      if (paramb.f() != null)
      {
        String str = paramb.f().getExtra("child_count") + " " + paramContext.getString(2131231325);
        j.setText(str);
      }
      if (paramb.g() != null)
      {
        paramContext = paramb.g().getExtra("child_count") + " " + paramContext.getString(2131231325);
        k.setText(paramContext);
        continue;
        if ((w >= 0L) && (paramb.f() != null)) {
          j.setText(j.c(w));
        }
        if ((z >= 0L) && (paramb.g() != null)) {
          k.setText(j.c(z));
        }
      }
    }
    p.setVisibility(8);
  }
  
  public void a(a parama, Context paramContext)
  {
    if (!(parama instanceof b)) {
      return;
    }
    parama = (b)parama;
    a.setText(parama.o());
    a.setTextColor(paramContext.getResources().getColor(2131558453));
    r.setVisibility(8);
    if (parama.d())
    {
      l.setVisibility(8);
      b.setVisibility(8);
      o.setVisibility(0);
      q.setText(paramContext.getString(2131230951, new Object[] { j.c(parama.e()) }));
      return;
    }
    o.setVisibility(8);
    l.setVisibility(0);
    label181:
    String str;
    if (parama.a() != -1)
    {
      r.setVisibility(0);
      c.setText(parama.a());
      if (parama.b() == -1) {
        break label325;
      }
      s.setVisibility(0);
      s.setImageResource(parama.b());
      if (parama.m().equals("appcatalog")) {
        break label374;
      }
      if (!parama.m().equals("redundancy")) {
        break label337;
      }
      str = MessageFormat.format(paramContext.getString(2131230956), new Object[] { Integer.valueOf(s) });
      b.setText(str);
      label239:
      b.setVisibility(0);
      label247:
      if (!parama.c()) {
        break label386;
      }
      m.setVisibility(0);
      label262:
      if (!parama.q()) {
        break label398;
      }
      n.setBackgroundResource(2130837586);
      t.setTextColor(paramContext.getResources().getColor(2131558745));
      u.setImageResource(2130837668);
    }
    for (;;)
    {
      a(parama, paramContext);
      return;
      r.setVisibility(8);
      break;
      label325:
      s.setVisibility(8);
      break label181;
      label337:
      str = " " + j.c(t);
      b.setText(str);
      break label239;
      label374:
      b.setVisibility(8);
      break label247;
      label386:
      m.setVisibility(8);
      break label262;
      label398:
      n.setBackgroundResource(2131558728);
      t.setTextColor(paramContext.getResources().getColor(2131558455));
      u.setImageResource(2130837665);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.viewholders.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */