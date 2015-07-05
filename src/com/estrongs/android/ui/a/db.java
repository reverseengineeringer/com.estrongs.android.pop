package com.estrongs.android.ui.a;

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
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.theme.ai;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.widget.ProgressTextView;
import java.util.List;

public class db
  extends BaseAdapter
{
  private Context a;
  private al b;
  private Handler c;
  private int d;
  private boolean e;
  
  public db(Context paramContext, Handler paramHandler)
  {
    a = paramContext;
    c = paramHandler;
    b = al.a(a);
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
      ai localai = c(i);
      if ((localai == null) || (!b.equals(paramString))) {}
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
  
  public Drawable b(int paramInt)
  {
    if (e) {}
    for (int i = -1;; i = 0)
    {
      paramInt = i + paramInt;
      if (paramInt >= 0) {
        break;
      }
      return b.a(2130838142);
    }
    if (paramInt % 2 != 0) {
      return b.a(2130838141);
    }
    return b.a(2130838142);
  }
  
  public ai c(int paramInt)
  {
    try
    {
      if (b.g() != null)
      {
        ai localai = (ai)b.g().get(paramInt);
        return localai;
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
      paramView = g.a(a).inflate(2130903261, null);
      paramViewGroup = new dh(this);
      a = ((LinearLayout)paramView.findViewById(2131362772));
      b = ((LinearLayout)paramView.findViewById(2131362768));
      d = ((ImageView)paramView.findViewById(2131362769));
      c = ((ImageView)paramView.findViewById(2131362773));
      e = ((RadioButton)paramView.findViewById(2131362770));
      f = ((ProgressTextView)paramView.findViewById(2131362774));
      f.a(false);
      paramView.setTag(paramViewGroup);
    }
    ai localai;
    for (;;)
    {
      localai = c(paramInt);
      if (localai != null) {
        break;
      }
      return null;
      paramViewGroup = (dh)paramView.getTag();
    }
    boolean bool2 = localai.b(a);
    int i;
    Object localObject;
    if ((paramInt == 0) || (!bool2))
    {
      i = 1;
      if ((bool2) && (i == 0)) {
        localai.c();
      }
      paramView.setBackgroundDrawable(b(paramInt));
      if ((!bool2) || (i == 0)) {
        break label394;
      }
      a.setClickable(true);
      a.setOnClickListener(new dc(this, localai, paramInt));
      d.setVisibility(8);
      e.setVisibility(0);
      localObject = e;
      if (d != paramInt) {
        break label388;
      }
      label260:
      ((RadioButton)localObject).setChecked(bool1);
      b.setOnClickListener(new dd(this, paramInt));
      if (paramInt > 0) {
        break label487;
      }
      c.setImageResource(2130838148);
    }
    for (;;)
    {
      f.setText(c);
      f.a(localai.b());
      localai.a(f);
      return paramView;
      localObject = a.getPackageManager();
      try
      {
        i = getPackageInfob, 1).versionCode;
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
      label388:
      bool1 = false;
      break label260;
      label394:
      d.setVisibility(0);
      if (bool2)
      {
        a.setOnClickListener(new de(this));
        d.setImageResource(2130838252);
      }
      for (;;)
      {
        e.setVisibility(8);
        b.setOnClickListener(new dg(this, localai));
        break;
        a.setOnClickListener(new df(this));
        d.setImageResource(2130838163);
      }
      label487:
      Drawable localDrawable = localai.a(a, c);
      if (localDrawable != null) {
        c.setImageDrawable(localDrawable);
      } else {
        c.setImageResource(2130838148);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.db
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */