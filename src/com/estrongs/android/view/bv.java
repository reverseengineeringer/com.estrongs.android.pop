package com.estrongs.android.view;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils.TruncateAt;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.appinfo.AppFolderInfoManager;
import com.estrongs.android.appinfo.o;
import com.estrongs.android.d.f;
import com.estrongs.android.d.k;
import com.estrongs.android.pop.esclasses.ESImageView;
import com.estrongs.android.pop.esclasses.ESTextView;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.drag.DragGrid;
import com.estrongs.android.ui.pcs.w;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.util.am;
import com.estrongs.android.widget.d;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.b.c;
import com.estrongs.fs.impl.pcs.b;
import com.estrongs.fs.m;
import java.text.DateFormat;
import java.util.Map;

public class bv
  implements d
{
  int a = 0;
  String b = e.ad.getString(2131427968);
  String c = e.ad.getString(2131427969);
  Runnable d = new bw(this);
  private o f = new bx(this);
  private String g = null;
  private String h = null;
  private String i = null;
  
  protected bv(aw paramaw) {}
  
  private bt c(View paramView)
  {
    bt localbt = new bt(e);
    f = ((TextView)paramView.findViewById(2131361822));
    e = ((ImageView)paramView.findViewById(2131362077));
    g = ((CheckBox)paramView.findViewById(2131361954));
    g.setClickable(false);
    g.setChecked(false);
    f.setTextColor(e.ac);
    d = paramView;
    return localbt;
  }
  
  private bt d(View paramView)
  {
    bt localbt = new bt(e);
    f = ((TextView)paramView.findViewById(2131361822));
    boolean bool = cl.a(e.ad);
    if (e.ad.getResources().getConfiguration().orientation == 1) {}
    for (int j = 1;; j = 0)
    {
      if ((bool) && (j == 0)) {
        f.setLines(2);
      }
      f.setTextColor(e.ac);
      g = ((CheckBox)paramView.findViewById(2131361954));
      g.setClickable(false);
      g.setChecked(false);
      d = paramView;
      e = ((ImageView)paramView.findViewById(2131362077));
      a = ((ESTextView)paramView.findViewById(2131362355));
      return localbt;
    }
  }
  
  public View a()
  {
    View localView;
    TextView localTextView;
    float f1;
    if (e.k == 0)
    {
      localView = e.ag.inflate(2130903142, null, false);
      localTextView = (TextView)localView.findViewById(2131361822);
      if (aw.c(e) == 0.0F)
      {
        f1 = aw.a(e, localTextView, e.A(), "abcwwww");
        aw.a(e, f1);
      }
      localTextView.setTextSize(0, aw.c(e));
      return localView;
    }
    if (e.k == 1)
    {
      localView = e.ag.inflate(2130903149, null, false);
      localTextView = (TextView)localView.findViewById(2131361822);
      if (aw.d(e) == 0.0F)
      {
        f1 = aw.a(e, localTextView, e.A(), "abcwww");
        aw.b(e, f1);
      }
      localTextView.setTextSize(0, aw.d(e));
      return localView;
    }
    if (e.k == 2)
    {
      a = 0;
      localView = e.ag.inflate(2130903150, null, false);
      localTextView = (TextView)localView.findViewById(2131361822);
      if (aw.e(e) == 0.0F)
      {
        f1 = aw.a(e, localTextView, e.A(), "abcww");
        aw.c(e, f1);
      }
      localTextView.setTextSize(0, aw.e(e));
      return localView;
    }
    if (e.k == 3)
    {
      a = 1;
      return e.ag.inflate(2130903146, null, false);
    }
    if (e.k == 4)
    {
      a = 1;
      return e.ag.inflate(2130903147, null, false);
    }
    if (e.k == 5)
    {
      a = 1;
      return e.ag.inflate(2130903148, null, false);
    }
    if (e.k == 6)
    {
      a = 1;
      return e.ag.inflate(2130903143, null, false);
    }
    if (e.k == 7) {
      return e.ag.inflate(2130903144, null, false);
    }
    if (e.k == 8) {
      return e.ag.inflate(2130903145, null, false);
    }
    return e.ag.inflate(2130903146, null, false);
  }
  
  public View a(h paramh)
  {
    return a();
  }
  
  public bt a(View paramView)
  {
    if (e.k < 6) {}
    for (paramView = c(paramView);; paramView = d(paramView))
    {
      b = e.k;
      return paramView;
    }
  }
  
  public void a(com.estrongs.android.widget.e parame, int paramInt)
  {
    Object localObject2 = (bt)parame;
    Object localObject1 = (h)e.e(paramInt);
    if (localObject1 == null) {
      return;
    }
    if ((localObject1 instanceof com.estrongs.fs.impl.n.a)) {
      localObject1 = ((com.estrongs.fs.impl.n.a)localObject1).a();
    }
    for (;;)
    {
      ((DragGrid)d).a((h)localObject1);
      if (z.ab) {
        f.setEllipsize(TextUtils.TruncateAt.END);
      }
      int j;
      label166:
      Object localObject3;
      if (com.estrongs.android.pop.esclasses.e.a())
      {
        f.setText("‏" + ((h)localObject1).getName());
        f.setTextColor(e.ac);
        if ((localObject1 instanceof c))
        {
          j = ((c)localObject1).d();
          if (3 != j) {
            break label777;
          }
          f.setTextColor(aw.f(e).d(2131230757));
        }
        f.a(e.getDrawable());
        localObject3 = f.d((h)localObject1);
        e.setImageDrawable((Drawable)localObject3);
        e.setTag(localObject1);
        if (f.c((h)localObject1))
        {
          if (!f.a((h)localObject1)) {
            break label805;
          }
          localObject3 = f.a((h)localObject1, true);
          e.setImageDrawable((Drawable)localObject3);
        }
        label234:
        if (!z.ap)
        {
          localObject3 = AppFolderInfoManager.d().a(e.ad, (h)localObject1, f);
          if (localObject3 != null) {
            ((ESImageView)e).a((Drawable)localObject3, 0.5F);
          }
        }
        if (!com.estrongs.fs.util.j.c((h)localObject1)) {
          break label865;
        }
        localObject3 = e.ad.getResources().getDrawable(2130837922);
        ((ESImageView)e).a((Drawable)localObject3);
        label319:
        if (((localObject1 instanceof b)) && (w.f()))
        {
          localObject3 = e.ad.getResources().getDrawable(2130837927);
          ((ESImageView)e).a((Drawable)localObject3);
        }
        if (a != null)
        {
          g = "";
          if (!aw.g(e)) {
            break label1113;
          }
          localObject3 = ((h)localObject1).getFileType();
          if ((!m.i.equals(localObject3)) && (!m.j.equals(localObject3))) {
            break label986;
          }
          g = e.l(2131427743);
          label433:
          h = "";
          if (!aw.g(e)) {
            break label1310;
          }
          label450:
          i = "";
          if (!aw.g(e)) {
            break label1347;
          }
          if (!com.estrongs.android.pop.esclasses.e.a()) {
            break label1404;
          }
          a.a(i, h, g);
        }
        label493:
        localObject1 = g;
        if (!e.l) {
          break label1427;
        }
        j = 0;
        label511:
        ((CheckBox)localObject1).setVisibility(j);
        if (!e.l) {
          break label1450;
        }
        ((CheckBox)localObject1).setVisibility(0);
        if (!e.h(paramInt)) {
          break label1433;
        }
        ((CheckBox)localObject1).setChecked(true);
        d.setBackgroundDrawable(al.a(e.ad).a(2130837806));
        label573:
        if ((!z.v) && (e.l))
        {
          localObject2 = new Rect();
          d.getHitRect((Rect)localObject2);
          if (!e.h(paramInt)) {
            break label1667;
          }
          if (paramInt != 0) {
            break label1467;
          }
          if (!((Rect)localObject2).isEmpty())
          {
            localObject1 = (com.estrongs.android.ui.drag.j)e.n.get(e.g(paramInt));
            if (localObject1 != null) {
              break label1705;
            }
            localObject1 = new com.estrongs.android.ui.drag.j();
            ((com.estrongs.android.ui.drag.j)localObject1).a(paramInt);
            ((com.estrongs.android.ui.drag.j)localObject1).a((DragGrid)d);
            e.n.put(e.g(paramInt), localObject1);
          }
        }
      }
      label777:
      label805:
      label865:
      label986:
      label1113:
      label1310:
      label1347:
      label1404:
      label1427:
      label1433:
      label1450:
      label1467:
      label1667:
      label1705:
      for (;;)
      {
        localObject3 = new com.estrongs.android.ui.drag.j();
        ((com.estrongs.android.ui.drag.j)localObject3).a(paramInt);
        ((com.estrongs.android.ui.drag.j)localObject3).a((DragGrid)d);
        ((com.estrongs.android.ui.drag.j)localObject1).a((Rect)localObject2, (com.estrongs.android.ui.drag.j)localObject3, d);
        for (;;)
        {
          e.a(parame, paramInt);
          return;
          f.setText(((h)localObject1).getName());
          break;
          if (2 != j) {
            break label166;
          }
          f.setTextColor(aw.f(e).d(2131230756));
          break label166;
          if (((paramInt != 0) || (com.estrongs.a.b.a.a(10).indexOf("makeAndAddView") < 0)) && (paramInt <= 0)) {
            break label234;
          }
          e.i(paramInt);
          if (e.I == null) {
            break label234;
          }
          e.I.a(paramInt, (h)localObject1, e);
          break label234;
          if (((h)localObject1).isLink())
          {
            localObject3 = e.ad.getResources().getDrawable(2130837739);
            ((ESImageView)e).a((Drawable)localObject3);
            break label319;
          }
          if ((com.estrongs.fs.util.a.a.size() <= 0) || (!am.ba(((h)localObject1).getAbsolutePath())) || (com.estrongs.fs.util.a.a.get(am.bE(((h)localObject1).getAbsolutePath())) == null)) {
            break label319;
          }
          localObject3 = e.ad.getResources().getDrawable(2130837640);
          ((ESImageView)e).a((Drawable)localObject3);
          break label319;
          if ((m.k.equals(localObject3)) || (m.l.equals(localObject3)))
          {
            g = e.l(2131427407);
            break label433;
          }
          if ((m.m.equals(localObject3)) || (m.n.equals(localObject3)))
          {
            g = e.l(2131427750);
            break label433;
          }
          if (am.v(((h)localObject1).getAbsolutePath()))
          {
            g = "flashair://flashair/".replaceFirst("flashair://", "http://");
            break label433;
          }
          g = am.a(((h)localObject1).getPath());
          break label433;
          if (((h)localObject1).getFileType().a())
          {
            if (((h)localObject1).getExtra("child_count") != null)
            {
              g = (((h)localObject1).getExtra("child_count") + " " + b);
              break label433;
            }
            g = e.l(2131427427);
            break label433;
          }
          if ((localObject1 instanceof c))
          {
            g = ((c)localObject1).a();
            break label433;
          }
          if ((((h)localObject1).length() < 1L) && ((localObject1 instanceof com.estrongs.fs.impl.pcs.a)))
          {
            g = e.l(2131427458);
            break label433;
          }
          if (((h)localObject1).length() == -1L)
          {
            g = e.ad.getString(2131428708);
            break label433;
          }
          g = com.estrongs.fs.util.j.c(((h)localObject1).length());
          break label433;
          if ((localObject1 instanceof c))
          {
            h = com.estrongs.fs.util.j.c(((h)localObject1).length());
            break label450;
          }
          h = com.estrongs.fs.util.j.a((h)localObject1);
          break label450;
          if (((h)localObject1).lastModified() <= 0L) {}
          for (localObject1 = e.ad.getString(2131428708);; localObject1 = aw.G.format(Long.valueOf(((h)localObject1).lastModified())))
          {
            i = ((String)localObject1);
            break;
          }
          a.a(g, h, i);
          break label493;
          j = 8;
          break label511;
          ((CheckBox)localObject1).setChecked(false);
          d.setBackgroundDrawable(null);
          break label573;
          ((CheckBox)localObject1).setVisibility(4);
          d.setBackgroundDrawable(null);
          break label573;
          localObject1 = (com.estrongs.android.ui.drag.j)e.n.get(e.g(paramInt));
          if (localObject1 == null)
          {
            localObject1 = new com.estrongs.android.ui.drag.j();
            ((com.estrongs.android.ui.drag.j)localObject1).a(paramInt);
            ((com.estrongs.android.ui.drag.j)localObject1).a((DragGrid)d);
            localObject2 = ((com.estrongs.android.ui.drag.j)localObject1).b().getBackground();
            ((com.estrongs.android.ui.drag.j)localObject1).b().setBackgroundResource(2130837568);
            ((com.estrongs.android.ui.drag.j)localObject1).a(com.estrongs.android.ui.d.a.a(((com.estrongs.android.ui.drag.j)localObject1).b()));
            ((com.estrongs.android.ui.drag.j)localObject1).b().setBackgroundDrawable((Drawable)localObject2);
            e.n.put(e.g(paramInt), localObject1);
          }
          else
          {
            ((com.estrongs.android.ui.drag.j)localObject1).a(paramInt);
            ((com.estrongs.android.ui.drag.j)localObject1).a((DragGrid)d);
            if (((com.estrongs.android.ui.drag.j)localObject1).c() == null)
            {
              localObject2 = ((com.estrongs.android.ui.drag.j)localObject1).b().getBackground();
              ((com.estrongs.android.ui.drag.j)localObject1).b().setBackgroundResource(2130837568);
              ((com.estrongs.android.ui.drag.j)localObject1).a(com.estrongs.android.ui.d.a.a(((com.estrongs.android.ui.drag.j)localObject1).b()));
              ((com.estrongs.android.ui.drag.j)localObject1).b().setBackgroundDrawable((Drawable)localObject2);
              continue;
              localObject1 = (com.estrongs.android.ui.drag.j)e.n.remove(e.e(paramInt));
              if (localObject1 != null) {
                ((com.estrongs.android.ui.drag.j)localObject1).e();
              }
            }
          }
        }
      }
    }
  }
  
  public boolean a(com.estrongs.android.widget.e parame)
  {
    return (parame == null) || (b != e.k);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */