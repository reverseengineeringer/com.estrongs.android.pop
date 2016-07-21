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
import com.estrongs.android.appinfo.p;
import com.estrongs.android.h.a.e;
import com.estrongs.android.h.f;
import com.estrongs.android.pop.esclasses.ESImageView;
import com.estrongs.android.pop.esclasses.ESTextView;
import com.estrongs.android.pop.esclasses.i;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.drag.DragGrid;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.c.b;
import com.estrongs.fs.w;
import java.text.DateFormat;
import java.util.List;
import java.util.Map;

public class dq
  implements cn
{
  int a = 0;
  String b = e.ag.getString(2131231325);
  String c = e.ag.getString(2131231326);
  Runnable d = new dr(this);
  private p f = new ds(this);
  private String g = null;
  private String h = null;
  private String i = null;
  
  protected dq(cr paramcr) {}
  
  private do c(View paramView)
  {
    do localdo = new do(e, paramView);
    k = ((TextView)paramView.findViewById(2131624200));
    j = ((ImageView)paramView.findViewById(2131624199));
    l = ((CheckBox)paramView.findViewById(2131624070));
    l.setClickable(false);
    l.setChecked(false);
    k.setTextColor(e.af);
    i = paramView;
    return localdo;
  }
  
  private do d(View paramView)
  {
    do localdo = new do(e, paramView);
    k = ((TextView)paramView.findViewById(2131624200));
    boolean bool = cu.a(e.ag);
    if (e.ag.getResources().getConfiguration().orientation == 1) {}
    for (int j = 1;; j = 0)
    {
      if ((bool) && (j == 0)) {
        k.setLines(2);
      }
      k.setTextColor(e.af);
      l = ((CheckBox)paramView.findViewById(2131624070));
      l.setClickable(false);
      l.setChecked(false);
      i = paramView;
      j = ((ImageView)paramView.findViewById(2131624199));
      a = ((ESTextView)paramView.findViewById(2131624961));
      return localdo;
    }
  }
  
  public View a()
  {
    View localView;
    TextView localTextView;
    float f1;
    if (e.p == 0)
    {
      localView = e.aj.inflate(2130903249, null, false);
      localTextView = (TextView)localView.findViewById(2131624200);
      if (cr.c(e) == 0.0F)
      {
        f1 = cr.a(e, localTextView, e.O(), "abcwwww");
        cr.a(e, f1);
      }
      localTextView.setTextSize(0, cr.c(e));
      return localView;
    }
    if (e.p == 1)
    {
      localView = e.aj.inflate(2130903256, null, false);
      localTextView = (TextView)localView.findViewById(2131624200);
      if (cr.d(e) == 0.0F)
      {
        f1 = cr.a(e, localTextView, e.O(), "abcwww");
        cr.b(e, f1);
      }
      localTextView.setTextSize(0, cr.d(e));
      return localView;
    }
    if (e.p == 2)
    {
      a = 0;
      localView = e.aj.inflate(2130903257, null, false);
      localTextView = (TextView)localView.findViewById(2131624200);
      if (cr.e(e) == 0.0F)
      {
        f1 = cr.a(e, localTextView, e.O(), "abcww");
        cr.c(e, f1);
      }
      localTextView.setTextSize(0, cr.e(e));
      return localView;
    }
    if (e.p == 3)
    {
      a = 1;
      return e.aj.inflate(2130903253, null, false);
    }
    if (e.p == 4)
    {
      a = 1;
      return e.aj.inflate(2130903254, null, false);
    }
    if (e.p == 5)
    {
      a = 1;
      return e.aj.inflate(2130903255, null, false);
    }
    if (e.p == 6)
    {
      a = 1;
      return e.aj.inflate(2130903250, null, false);
    }
    if (e.p == 7) {
      return e.aj.inflate(2130903251, null, false);
    }
    if (e.p == 8) {
      return e.aj.inflate(2130903252, null, false);
    }
    return e.aj.inflate(2130903253, null, false);
  }
  
  public do a(View paramView)
  {
    if (e.p < 6) {}
    for (do localdo = c(paramView);; localdo = d(paramView))
    {
      if ((e.p >= 3) && (paramView.findViewById(2131624581) != null)) {
        n = ((ImageView)paramView.findViewById(2131624581));
      }
      b = e.p;
      return localdo;
    }
  }
  
  public void a(ci paramci, int paramInt)
  {
    Object localObject2 = (do)paramci;
    Object localObject1 = (h)e.e(paramInt);
    if (localObject1 == null) {
      return;
    }
    if ((localObject1 instanceof com.estrongs.fs.impl.s.a)) {
      localObject1 = ((com.estrongs.fs.impl.s.a)localObject1).a();
    }
    for (;;)
    {
      ((DragGrid)i).setFileObject((h)localObject1);
      if (z.ab) {
        k.setEllipsize(TextUtils.TruncateAt.END);
      }
      int j;
      label166:
      label207:
      Object localObject3;
      if (i.a())
      {
        k.setText("‏" + ((h)localObject1).getName());
        k.setTextColor(e.af);
        if ((localObject1 instanceof com.estrongs.fs.impl.b.d))
        {
          j = ((com.estrongs.fs.impl.b.d)localObject1).i();
          if (3 != j) {
            break label829;
          }
          k.setTextColor(cr.f(e).c(2131558457));
        }
        j.setTag(localObject1);
        j = f.g((h)localObject1);
        if (!f.b((h)localObject1)) {
          break label857;
        }
        e.b(((h)localObject1).getAbsolutePath(), j, (h)localObject1, j, true);
        if ((!z.ap) && (!(localObject1 instanceof b)))
        {
          localObject3 = AppFolderInfoManager.d().a(e.ag, (h)localObject1, f);
          if (localObject3 != null) {
            ((ESImageView)j).a((Drawable)localObject3, 0.5F);
          }
        }
        if ((localObject1 instanceof com.estrongs.fs.impl.c.d))
        {
          localObject3 = AppFolderInfoManager.d().a(e.ag, (h)b.get(0), f);
          if (localObject3 != null) {
            ((ESImageView)j).a((Drawable)localObject3, 0.5F);
          }
        }
        if (AppFolderInfoManager.d().e((h)localObject1))
        {
          localObject3 = AppFolderInfoManager.d().d((h)localObject1);
          localObject3 = AppFolderInfoManager.d().a(e.ag, (h)localObject3, f);
          if (localObject3 != null) {
            ((ESImageView)j).a((Drawable)localObject3, 0.5F);
          }
        }
        if (a != null)
        {
          g = "";
          if (!cr.g(e)) {
            break label997;
          }
          localObject3 = ((h)localObject1).getFileType();
          if ((!w.i.equals(localObject3)) && (!w.j.equals(localObject3))) {
            break label870;
          }
          g = e.j(2131231083);
          label458:
          h = "";
          if (!cr.g(e)) {
            break label1194;
          }
          label475:
          i = "";
          if (!cr.g(e)) {
            break label1259;
          }
          if (!i.a()) {
            break label1381;
          }
          a.a(i, h, g);
        }
        label518:
        localObject1 = l;
        if (n != null)
        {
          if ((!e.q) && (!(e instanceof fv))) {
            break label1404;
          }
          n.setVisibility(8);
        }
        label560:
        if (!e.q) {
          break label1442;
        }
        ((CheckBox)localObject1).setVisibility(0);
        if (!e.h(paramInt)) {
          break label1415;
        }
        ((CheckBox)localObject1).setChecked(true);
        i.setBackgroundDrawable(at.a(e.ag).a(2130838143));
        label616:
        if ((!z.v) && (e.q))
        {
          localObject2 = new Rect();
          i.getHitRect((Rect)localObject2);
          if (!e.h(paramInt)) {
            break label1626;
          }
          if (paramInt != 0) {
            break label1452;
          }
          if (!((Rect)localObject2).isEmpty())
          {
            localObject1 = (com.estrongs.android.ui.drag.j)e.s.get(e.g(paramInt));
            if (localObject1 != null) {
              break label1664;
            }
            localObject1 = new com.estrongs.android.ui.drag.j();
            ((com.estrongs.android.ui.drag.j)localObject1).a(paramInt);
            ((com.estrongs.android.ui.drag.j)localObject1).a((DragGrid)i);
            e.s.put(e.g(paramInt), localObject1);
          }
        }
      }
      label829:
      label857:
      label870:
      label997:
      label1194:
      label1259:
      label1381:
      label1404:
      label1415:
      label1442:
      label1452:
      label1626:
      label1664:
      for (;;)
      {
        localObject3 = new com.estrongs.android.ui.drag.j();
        ((com.estrongs.android.ui.drag.j)localObject3).a(paramInt);
        ((com.estrongs.android.ui.drag.j)localObject3).a((DragGrid)i);
        ((com.estrongs.android.ui.drag.j)localObject1).a((Rect)localObject2, (com.estrongs.android.ui.drag.j)localObject3, i);
        for (;;)
        {
          e.a(paramci, paramInt);
          e.b(paramci, paramInt);
          return;
          k.setText(((h)localObject1).getName());
          break;
          if (2 != j) {
            break label166;
          }
          k.setTextColor(cr.f(e).c(2131558458));
          break label166;
          e.a(j, j, (h)localObject1);
          break label207;
          if ((w.k.equals(localObject3)) || (w.l.equals(localObject3)))
          {
            g = e.j(2131231660);
            break label458;
          }
          if ((w.m.equals(localObject3)) || (w.n.equals(localObject3)))
          {
            g = e.j(2131231090);
            break label458;
          }
          if (ap.x(((h)localObject1).getAbsolutePath()))
          {
            g = "flashair://flashair/".replaceFirst("flashair://", "http://");
            break label458;
          }
          g = ap.a(((h)localObject1).getPath());
          break label458;
          if (((h)localObject1).getFileType().a())
          {
            if (((h)localObject1).getExtra("child_count") != null)
            {
              g = (((h)localObject1).getExtra("child_count") + " " + b);
              break label458;
            }
            g = e.j(2131231133);
            break label458;
          }
          if ((localObject1 instanceof com.estrongs.fs.impl.b.d))
          {
            g = ((com.estrongs.fs.impl.b.d)localObject1).e();
            break label458;
          }
          if ((((h)localObject1).length() < 1L) && ((localObject1 instanceof com.estrongs.fs.impl.pcs.a)))
          {
            g = e.j(2131232179);
            break label458;
          }
          if (((h)localObject1).length() == -1L)
          {
            g = e.ag.getString(2131232212);
            break label458;
          }
          g = com.estrongs.fs.util.j.c(((h)localObject1).length());
          break label458;
          if ((localObject1 instanceof com.estrongs.fs.impl.b.d))
          {
            h = com.estrongs.fs.util.j.c(((h)localObject1).length());
            break label475;
          }
          if ((localObject1 instanceof b))
          {
            if ((localObject1 instanceof com.estrongs.fs.impl.c.d)) {
              break label475;
            }
            h = com.estrongs.fs.util.j.a((h)localObject1);
            break label475;
          }
          h = com.estrongs.fs.util.j.a((h)localObject1);
          break label475;
          if ((localObject1 instanceof b))
          {
            if (((h)localObject1).lastModified() <= 0L) {}
            for (localObject1 = e.ag.getString(2131232212);; localObject1 = cr.N.format(Long.valueOf(((h)localObject1).lastModified())))
            {
              i = ((String)localObject1);
              break;
            }
          }
          if (((h)localObject1).lastModified() <= 0L) {}
          for (localObject1 = e.ag.getString(2131232212);; localObject1 = cr.N.format(Long.valueOf(((h)localObject1).lastModified())))
          {
            i = ((String)localObject1);
            break;
          }
          a.a(g, h, i);
          break label518;
          n.setVisibility(0);
          break label560;
          ((CheckBox)localObject1).setChecked(false);
          i.setFocusable(true);
          i.setBackgroundResource(2130837674);
          break label616;
          ((CheckBox)localObject1).setVisibility(8);
          break label616;
          localObject1 = (com.estrongs.android.ui.drag.j)e.s.get(e.g(paramInt));
          if (localObject1 == null)
          {
            localObject1 = new com.estrongs.android.ui.drag.j();
            ((com.estrongs.android.ui.drag.j)localObject1).a(paramInt);
            ((com.estrongs.android.ui.drag.j)localObject1).a((DragGrid)i);
            localObject2 = ((com.estrongs.android.ui.drag.j)localObject1).b().getBackground();
            ((com.estrongs.android.ui.drag.j)localObject1).b().setBackgroundResource(2130837692);
            ((com.estrongs.android.ui.drag.j)localObject1).b().setBackgroundDrawable((Drawable)localObject2);
            e.s.put(e.g(paramInt), localObject1);
          }
          else
          {
            ((com.estrongs.android.ui.drag.j)localObject1).a(paramInt);
            ((com.estrongs.android.ui.drag.j)localObject1).a((DragGrid)i);
            if (((com.estrongs.android.ui.drag.j)localObject1).c() == null)
            {
              localObject2 = ((com.estrongs.android.ui.drag.j)localObject1).b().getBackground();
              ((com.estrongs.android.ui.drag.j)localObject1).b().setBackgroundResource(2130837692);
              ((com.estrongs.android.ui.drag.j)localObject1).b().setBackgroundDrawable((Drawable)localObject2);
              continue;
              localObject1 = (com.estrongs.android.ui.drag.j)e.s.remove(e.e(paramInt));
              if (localObject1 != null) {
                ((com.estrongs.android.ui.drag.j)localObject1).e();
              }
            }
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.dq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */