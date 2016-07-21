package com.estrongs.android.view;

import android.graphics.drawable.Drawable;
import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.estrongs.android.appinfo.AppFolderInfoManager;
import com.estrongs.android.appinfo.p;
import com.estrongs.android.h.a.e;
import com.estrongs.android.h.f;
import com.estrongs.android.pop.esclasses.ESImageView;
import com.estrongs.android.pop.spfs.CreateSiteFileObject;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import com.estrongs.fs.w;
import java.util.Map;

public class em
  implements cn
{
  int a = 0;
  Runnable b = new en(this);
  private p d = new eo(this);
  
  protected em(eb parameb) {}
  
  public View a()
  {
    return null;
  }
  
  public eq a(View paramView)
  {
    eq localeq = new eq(paramView);
    k = ((TextView)paramView.findViewById(2131624200));
    j = ((ImageView)paramView.findViewById(2131624199));
    l = ((CheckBox)paramView.findViewById(2131624070));
    l.setClickable(false);
    l.setChecked(false);
    i = paramView;
    paramView = paramView.findViewById(2131624202);
    if (paramView != null) {
      c = ((ImageView)paramView);
    }
    return localeq;
  }
  
  public void a(ci paramci, int paramInt)
  {
    Object localObject1 = (h)c.e(paramInt);
    if (localObject1 == null) {}
    label123:
    label170:
    label198:
    label270:
    label446:
    label472:
    label478:
    label507:
    label531:
    label568:
    label720:
    label733:
    label753:
    for (;;)
    {
      return;
      Object localObject2;
      if (((h)localObject1).getFileType().a())
      {
        k.setVisibility(0);
        localObject2 = ((h)localObject1).getExtra("item_count");
        if ((localObject2 == null) || (ap.aP(c.c()))) {
          break label478;
        }
        k.setText(((h)localObject1).getName() + "(" + localObject2 + ")");
        k.setEllipsize(TextUtils.TruncateAt.valueOf("MIDDLE"));
        if ((localObject1 instanceof CreateSiteFileObject)) {
          break;
        }
        localObject2 = l;
        if (!c.N()) {
          break label531;
        }
        ((CheckBox)localObject2).setVisibility(0);
        if (!c.h(paramInt)) {
          break label507;
        }
        ((CheckBox)localObject2).setChecked(true);
        if ((c.w()) && (!c.v())) {
          k.setVisibility(0);
        }
        if (((h)localObject1).getFileType().a())
        {
          localObject2 = (eq)paramci;
          if (c != null)
          {
            if (!ap.aV(((h)localObject1).getPath())) {
              break label720;
            }
            if (!ap.az(((h)localObject1).getPath())) {
              break label568;
            }
            c.setImageResource(2130838011);
            c.setVisibility(0);
          }
        }
        j.setTag(localObject1);
        localObject2 = eb.a((h)localObject1, true);
        j.setImageResource(2130837912);
        if (localObject2 == null) {
          break label733;
        }
        e.b(((h)localObject1).getAbsolutePath(), j, (h)localObject2, 2130837912, true);
      }
      for (;;)
      {
        if (!AppFolderInfoManager.d().e((h)localObject1)) {
          break label753;
        }
        localObject1 = AppFolderInfoManager.d().d((h)localObject1);
        localObject1 = AppFolderInfoManager.d().a(c.ag, (h)localObject1, d);
        if (localObject1 == null) {
          break;
        }
        ((ESImageView)j).a((Drawable)localObject1, 0.5F);
        return;
        if (eb.a(c) == 0) {
          eb.a(c, false);
        }
        int i = eb.a(c) - eb.b(c) * 2;
        localObject2 = new RelativeLayout.LayoutParams(i, i);
        j.setLayoutParams((ViewGroup.LayoutParams)localObject2);
        if (!f.b())
        {
          i = 1;
          localObject2 = k;
          if (i == 0) {
            break label472;
          }
        }
        for (i = 0;; i = 8)
        {
          ((TextView)localObject2).setVisibility(i);
          break;
          i = 0;
          break label446;
        }
        k.setText(((h)localObject1).getName());
        k.setEllipsize(TextUtils.TruncateAt.valueOf("END"));
        break label123;
        ((CheckBox)localObject2).setChecked(false);
        c.R().remove(localObject1);
        break label170;
        ((CheckBox)localObject2).setVisibility(4);
        if ((!c.w()) || (c.v())) {
          break label198;
        }
        k.setVisibility(4);
        break label198;
        if (ap.aA(((h)localObject1).getPath()))
        {
          c.setImageResource(2130838032);
          c.setVisibility(0);
          break label270;
        }
        if (ap.aB(((h)localObject1).getPath()))
        {
          c.setImageResource(2130838010);
          c.setVisibility(0);
          break label270;
        }
        if (!ap.aC(((h)localObject1).getPath())) {
          break label270;
        }
        if (ap.aD(((h)localObject1).getPath()))
        {
          e.b(((h)localObject1).getAbsolutePath(), j, (h)localObject1, 2130837912, true);
          c.setVisibility(8);
          return;
        }
        c.setImageResource(2130838035);
        c.setVisibility(0);
        break label270;
        c.setVisibility(8);
        break label270;
        e.b(((h)localObject1).getAbsolutePath(), j, (h)localObject1, 2130837912, true);
      }
    }
    l.setVisibility(4);
    j.setImageResource(2130837912);
    e.b(((h)localObject1).getAbsolutePath(), j, (h)localObject1, 2130837912, true);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.em
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */