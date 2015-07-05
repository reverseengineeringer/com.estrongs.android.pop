package com.estrongs.android.ui.a;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.appinfo.AppFolderInfoManager;
import com.estrongs.android.appinfo.o;
import com.estrongs.android.pop.app.diskusage.e;
import com.estrongs.android.pop.esclasses.ESImageView;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.widget.UsageImageView;
import java.io.File;
import java.util.List;

public class k
  extends BaseAdapter
{
  Runnable a = new l(this);
  private Context b;
  private e c;
  private List<Integer> d = null;
  private boolean e = false;
  private al f;
  private o g = new m(this);
  
  public k(Context paramContext, e parame)
  {
    b = paramContext;
    c = parame;
    f = al.a(b);
    a();
  }
  
  private void a()
  {
    File[] arrayOfFile = c.c();
    AppFolderInfoManager.d().a(arrayOfFile, new n(this));
  }
  
  public void a(e parame)
  {
    c = parame;
  }
  
  public void a(List<Integer> paramList)
  {
    d = paramList;
  }
  
  public void a(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public int getCount()
  {
    if (c != null) {
      return c.b();
    }
    return 0;
  }
  
  public Object getItem(int paramInt)
  {
    if (c != null) {
      return c.c(paramInt);
    }
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = g.a(b).inflate(2130903176, null);
    }
    paramView = (p)paramViewGroup.getTag();
    if (paramView == null)
    {
      paramView = new p(this);
      a = ((ImageView)paramViewGroup.findViewById(2131362446));
      b = ((UsageImageView)paramViewGroup.findViewById(2131362447));
      c = ((TextView)paramViewGroup.findViewById(2131362448));
      c.setTextColor(f.i());
      d = ((TextView)paramViewGroup.findViewById(2131362449));
      d.setTextColor(f.i());
      e = ((TextView)paramViewGroup.findViewById(2131362450));
      e.setTextColor(f.i());
      f = ((TextView)paramViewGroup.findViewById(2131362451));
      f.setTextColor(f.i());
      g = ((CheckBox)paramViewGroup.findViewById(2131361954));
      paramViewGroup.setTag(paramView);
    }
    for (;;)
    {
      if (c != null)
      {
        c.b(paramInt);
        a.setImageDrawable((Drawable)c.a(e.a));
        b.a(((Float)c.a(e.g)).floatValue());
        c.setText(c.a(e.b).toString());
        d.setText(c.a(e.c).toString());
        e.setText(c.a(e.f).toString());
        f.setText(c.a(e.e).toString());
        Object localObject = (File)c.c(paramInt);
        localObject = AppFolderInfoManager.d().a(b, (File)localObject, g);
        if (localObject != null) {
          ((ESImageView)a).a((Drawable)localObject, 0.5F);
        }
      }
      int i = paramViewGroup.getPaddingLeft();
      int j = paramViewGroup.getPaddingRight();
      int k = paramViewGroup.getPaddingTop();
      int m = paramViewGroup.getPaddingBottom();
      if (e)
      {
        g.setVisibility(0);
        if (d != null)
        {
          boolean bool = d.contains(Integer.valueOf(paramInt));
          g.setChecked(bool);
          if (!bool) {
            break label476;
          }
          paramViewGroup.setBackgroundResource(2130837806);
        }
      }
      for (;;)
      {
        paramViewGroup.setPadding(i, k, j, m);
        return paramViewGroup;
        label476:
        paramViewGroup.setBackgroundDrawable(null);
        continue;
        g.setVisibility(8);
        paramViewGroup.setBackgroundDrawable(null);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */