package com.estrongs.android.view;

import android.graphics.drawable.Drawable;
import android.text.TextUtils.TruncateAt;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.a.b.a;
import com.estrongs.android.d.f;
import com.estrongs.android.d.k;
import com.estrongs.android.pop.spfs.CreateSiteFileObject;
import com.estrongs.android.util.am;
import com.estrongs.android.widget.d;
import com.estrongs.android.widget.e;
import com.estrongs.fs.h;
import com.estrongs.fs.m;
import java.util.Map;

public class cn
  implements d
{
  int a = 0;
  
  protected cn(cd paramcd) {}
  
  public View a()
  {
    return null;
  }
  
  public View a(h paramh)
  {
    if ((paramh != null) && (paramh.getFileType().a())) {
      return b.ag.inflate(b.an(), null, false);
    }
    return b.ag.inflate(b.ao(), null, false);
  }
  
  public cp a(View paramView)
  {
    cp localcp = new cp();
    f = ((TextView)paramView.findViewById(2131361822));
    e = ((ImageView)paramView.findViewById(2131362077));
    g = ((CheckBox)paramView.findViewById(2131361954));
    g.setClickable(false);
    g.setChecked(false);
    d = paramView;
    paramView = paramView.findViewById(2131362354);
    if (paramView != null) {
      c = ((ImageView)paramView);
    }
    return localcp;
  }
  
  public void a(e parame, int paramInt)
  {
    Object localObject1 = (h)b.e(paramInt);
    if (localObject1 == null) {}
    label144:
    label172:
    label348:
    label371:
    label408:
    label545:
    label558:
    do
    {
      do
      {
        return;
        Object localObject2 = ((h)localObject1).getExtra("item_count");
        if ((localObject2 != null) && (!am.aF(b.c())))
        {
          f.setText(((h)localObject1).getName() + "(" + localObject2 + ")");
          f.setEllipsize(TextUtils.TruncateAt.valueOf("MIDDLE"));
          if ((localObject1 instanceof CreateSiteFileObject)) {
            break;
          }
          localObject2 = g;
          if (!b.z()) {
            break label371;
          }
          ((CheckBox)localObject2).setVisibility(0);
          if (!b.h(paramInt)) {
            break label348;
          }
          ((CheckBox)localObject2).setChecked(true);
          if ((b.am()) && (!b.al())) {
            f.setVisibility(0);
          }
          if (((h)localObject1).getFileType().a())
          {
            localObject2 = (cp)parame;
            if (c != null)
            {
              if (!am.aL(((h)localObject1).getPath())) {
                break label545;
              }
              if (!am.ap(((h)localObject1).getPath())) {
                break label408;
              }
              c.setImageResource(2130837738);
              c.setVisibility(0);
            }
          }
        }
        for (;;)
        {
          f.a(e.getDrawable());
          e.setBackgroundColor(0);
          e.setImageDrawable(null);
          e.setTag(localObject1);
          localObject2 = cd.a((h)localObject1, true);
          if ((localObject2 == null) || (!f.a((h)localObject2))) {
            break label558;
          }
          e.setBackgroundColor(-5921371);
          localObject1 = f.a((h)localObject2, true);
          e.setImageDrawable((Drawable)localObject1);
          return;
          f.setText(((h)localObject1).getName());
          f.setEllipsize(TextUtils.TruncateAt.valueOf("END"));
          break;
          ((CheckBox)localObject2).setChecked(false);
          b.D().remove(localObject1);
          break label144;
          ((CheckBox)localObject2).setVisibility(4);
          if ((!b.am()) || (b.al())) {
            break label172;
          }
          f.setVisibility(4);
          break label172;
          if (am.aq(((h)localObject1).getPath()))
          {
            c.setImageResource(2130837740);
            c.setVisibility(0);
          }
          else if (am.ar(((h)localObject1).getPath()))
          {
            c.setImageResource(2130837737);
            c.setVisibility(0);
          }
          else if (am.as(((h)localObject1).getPath()))
          {
            if (am.at(((h)localObject1).getPath()))
            {
              e.setImageDrawable(f.e((h)localObject1));
              c.setVisibility(8);
              return;
            }
            c.setImageResource(2130837741);
            c.setVisibility(0);
            continue;
            c.setVisibility(8);
          }
        }
      } while (((paramInt != 0) || (a.a(10).indexOf("makeAndAddView") < 0)) && (paramInt <= 0));
      b.i(paramInt);
    } while (b.Y() == null);
    b.Y().a(paramInt, (h)localObject1, e);
    return;
    e.setImageDrawable(f.e((h)localObject1));
  }
  
  public boolean a(e parame)
  {
    return parame == null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.cn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */