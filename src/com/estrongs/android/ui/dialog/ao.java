package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.theme.at;
import java.text.MessageFormat;
import java.util.HashMap;
import java.util.List;

class ao
  extends BaseAdapter
{
  List<ap> a;
  int b = 0;
  int c = 0;
  int d = -1;
  int e = -1;
  
  ao(ag paramag) {}
  
  protected String a()
  {
    ap localap = (ap)a.get(b);
    if (localap == null) {
      return null;
    }
    return d;
  }
  
  protected void a(int paramInt)
  {
    b = paramInt;
    notifyDataSetChanged();
  }
  
  protected void a(List<ap> paramList, int paramInt1, int paramInt2, int paramInt3)
  {
    a = paramList;
    d = paramInt1;
    e = paramInt2;
    b = paramInt3;
    c = paramInt3;
    if (ad.a(f.d).aG())
    {
      paramList = f.e;
      if (paramInt3 == 0) {
        break label79;
      }
    }
    label79:
    for (boolean bool = true;; bool = false)
    {
      paramList.setEnabled(bool);
      f.a(paramInt3);
      notifyDataSetChanged();
      return;
    }
  }
  
  protected boolean b()
  {
    return c != b;
  }
  
  public int getCount()
  {
    if (a == null) {
      return 0;
    }
    return a.size();
  }
  
  public Object getItem(int paramInt)
  {
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public int getItemViewType(int paramInt)
  {
    if (paramInt == d) {
      return 1;
    }
    return 0;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    aq localaq;
    label150:
    ap localap;
    if (paramView == null) {
      if (paramInt == d)
      {
        paramView = k.a(f.d).inflate(2130903115, null);
        localaq = new aq(null);
        a = ((ImageView)paramView.findViewById(2131624392));
        b = ((TextView)paramView.findViewById(2131624309));
        b.setTextColor(at.a(f.d).c(2131558661));
        d = ((ImageView)paramView.findViewById(2131624393));
        c = ((TextView)paramView.findViewById(2131624394));
        paramView.setLayoutParams(new AbsListView.LayoutParams(-1, g.a(f.d, 50.0F)));
        paramView.setTag(localaq);
        paramViewGroup = paramView;
        localap = (ap)a.get(paramInt);
        if (localap != null) {
          break label248;
        }
        a.setVisibility(8);
        b.setText(2131231852);
        label190:
        paramView = d;
        if (b != paramInt) {
          break label407;
        }
      }
    }
    label248:
    label407:
    for (paramInt = 2130838303;; paramInt = 2130838305)
    {
      paramView.setImageResource(paramInt);
      return paramViewGroup;
      paramView = k.a(f.d).inflate(2130903114, null);
      break;
      localaq = (aq)paramView.getTag();
      paramViewGroup = paramView;
      break label150;
      Drawable localDrawable = (Drawable)ag.a(f).get(d);
      paramView = localDrawable;
      if (localDrawable == null) {
        paramView = localDrawable;
      }
      try
      {
        localDrawable = f.c.getApplicationIcon(d);
        paramView = localDrawable;
        ag.a(f).put(d, localDrawable);
        paramView = localDrawable;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        for (;;) {}
      }
      a.setVisibility(0);
      a.setImageDrawable(paramView);
      b.setText(c);
      if ((paramInt != d) || (c == null)) {
        break label190;
      }
      c.setText(MessageFormat.format(f.d.getString(2131232243), new Object[] { Integer.valueOf(e) }));
      break label190;
    }
  }
  
  public int getViewTypeCount()
  {
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */