package com.estrongs.android.ui.adapter;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import com.estrongs.android.pop.a;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.widget.ProgressTextView;
import java.util.List;

public class dr
  extends BaseAdapter
{
  private Context a;
  private at b;
  private Handler c;
  private int d;
  private boolean e;
  
  public dr(Context paramContext, Handler paramHandler)
  {
    a = paramContext;
    c = paramHandler;
    b = at.a(a);
    d = 0;
    e = true;
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    Message localMessage = new Message();
    what = paramInt1;
    arg1 = paramInt2;
    if (c != null) {
      c.sendMessage(localMessage);
    }
  }
  
  public int a()
  {
    return d;
  }
  
  public void a(int paramInt)
  {
    d = paramInt;
    a(1, paramInt);
  }
  
  public void a(String paramString)
  {
    int i = 0;
    if (i < getCount())
    {
      al localal = b(i);
      if ((localal == null) || (!c.equals(paramString))) {}
    }
    for (;;)
    {
      if (i != -1) {
        a(i);
      }
      return;
      i += 1;
      break;
      i = -1;
    }
  }
  
  public al b(int paramInt)
  {
    try
    {
      if (b.g() != null)
      {
        al localal = (al)b.g().get(paramInt);
        return localal;
      }
    }
    catch (Exception localException)
    {
      return null;
    }
    return null;
  }
  
  public int getCount()
  {
    if (b.g() != null) {
      return b.g().size();
    }
    return 0;
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    boolean bool1 = true;
    if (paramView == null)
    {
      paramView = k.a(a).inflate(2130903442, null);
      paramViewGroup = new dx(this);
      a = ((LinearLayout)paramView.findViewById(2131625557));
      b = ((LinearLayout)paramView.findViewById(2131625560));
      d = ((ImageView)paramView.findViewById(2131625561));
      c = ((ImageView)paramView.findViewById(2131625558));
      e = ((RadioButton)paramView.findViewById(2131625562));
      f = ((ProgressTextView)paramView.findViewById(2131625559));
      f.a(false);
      paramView.setTag(paramViewGroup);
    }
    al localal;
    for (;;)
    {
      localal = b(paramInt);
      if (localal != null) {
        break;
      }
      return null;
      paramViewGroup = (dx)paramView.getTag();
    }
    boolean bool2 = localal.b(a);
    int i;
    Object localObject;
    if ((paramInt == 0) || (!bool2))
    {
      i = 1;
      if ((bool2) && (!a.getPackageName().equals(c))) {
        localal.f();
      }
      if ((!bool2) || (i == 0)) {
        break label398;
      }
      a.setClickable(true);
      a.setOnClickListener(new ds(this, localal, paramInt));
      d.setVisibility(8);
      e.setVisibility(0);
      localObject = e;
      if (d != paramInt) {
        break label392;
      }
      label264:
      ((RadioButton)localObject).setChecked(bool1);
      b.setOnClickListener(new dt(this, paramInt));
      if (paramInt > 0) {
        break label530;
      }
      c.setImageResource(2130838513);
    }
    for (;;)
    {
      f.setText(d);
      f.a(localal.e());
      localal.a(f);
      return paramView;
      localObject = a.getPackageManager();
      try
      {
        i = getPackageInfoc, 1).versionCode;
        int j = a.a();
        if (i >= j)
        {
          i = 1;
          break;
        }
        i = 0;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        i = 1;
      }
      break;
      label392:
      bool1 = false;
      break label264;
      label398:
      d.setVisibility(0);
      if (bool2)
      {
        a.setOnClickListener(new du(this));
        d.setImageDrawable(g.a(b.a(2130838624), b.c(2131558717)));
      }
      for (;;)
      {
        e.setVisibility(8);
        b.setOnClickListener(new dw(this, localal));
        break;
        a.setOnClickListener(new dv(this));
        d.setImageDrawable(g.a(b.a(2130838542), b.c(2131558717)));
      }
      label530:
      Drawable localDrawable = localal.b(a, c);
      if (localDrawable != null) {
        c.setImageDrawable(localDrawable);
      } else {
        c.setImageResource(2130838513);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.dr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */