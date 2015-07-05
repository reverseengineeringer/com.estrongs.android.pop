package com.estrongs.android.ui.view;

import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.app.a.ag;
import com.estrongs.android.pop.app.a.ai;
import com.estrongs.android.pop.app.a.ak;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.util.am;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class ac
  extends BaseAdapter
  implements AdapterView.OnItemClickListener
{
  ag a = null;
  com.estrongs.android.ui.theme.al b;
  private boolean c = false;
  private List<Integer> d;
  private Handler e;
  private com.estrongs.android.pop.app.a.al f;
  private Context g;
  private int h = -1;
  private boolean i = false;
  private boolean j = false;
  private int k = -1;
  
  public ac(Context paramContext, Handler paramHandler)
  {
    g = paramContext;
    e = paramHandler;
    b = com.estrongs.android.ui.theme.al.a(g);
    i();
  }
  
  private String a(ak paramak)
  {
    if (f != null) {}
    for (String str1 = f;; str1 = "")
    {
      String str2 = str1;
      if (g == null) {
        str2 = str1 + g.getString(2131428312);
      }
      return str2;
    }
  }
  
  private void i()
  {
    a = new ad(this);
  }
  
  public com.estrongs.android.pop.app.a.al a()
  {
    return f;
  }
  
  public void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    h = paramInt;
    i = paramBoolean1;
    j = paramBoolean2;
  }
  
  public void a(com.estrongs.android.pop.app.a.al paramal)
  {
    f = paramal;
  }
  
  public void a(boolean paramBoolean)
  {
    if (c != paramBoolean)
    {
      c = paramBoolean;
      if (!paramBoolean) {
        break label62;
      }
      if (d != null) {
        break label50;
      }
      d = new LinkedList();
    }
    for (;;)
    {
      e.sendEmptyMessage(1200001);
      notifyDataSetChanged();
      return;
      label50:
      d.clear();
      continue;
      label62:
      d.clear();
    }
  }
  
  public boolean a(int paramInt)
  {
    return d.contains(Integer.valueOf(paramInt));
  }
  
  protected boolean a(ai paramai)
  {
    return (d) && ((c.getTag() == null) || (b == c.getTag()));
  }
  
  public void b(int paramInt)
  {
    k = paramInt;
  }
  
  public boolean b()
  {
    return c;
  }
  
  public boolean c()
  {
    int[] arrayOfInt = h();
    return (arrayOfInt != null) && (arrayOfInt[1] - arrayOfInt[0] >= d.size());
  }
  
  public List<ak> d()
  {
    LinkedList localLinkedList = new LinkedList();
    Collections.sort(d);
    Iterator localIterator = d.iterator();
    while (localIterator.hasNext()) {
      localLinkedList.add((ak)getItem(((Integer)localIterator.next()).intValue()));
    }
    return localLinkedList;
  }
  
  public void e()
  {
    d.clear();
    int n = getCount();
    int m = 0;
    while (m < n)
    {
      d.add(Integer.valueOf(m));
      m += 1;
    }
    e.sendEmptyMessage(1200002);
    notifyDataSetChanged();
  }
  
  public void f()
  {
    d.clear();
    e.sendEmptyMessage(1200002);
    notifyDataSetChanged();
  }
  
  public void g()
  {
    int[] arrayOfInt = h();
    if (arrayOfInt != null)
    {
      d.clear();
      int m = arrayOfInt[0];
      while (m <= arrayOfInt[1])
      {
        d.add(Integer.valueOf(m));
        m += 1;
      }
      e.sendEmptyMessage(1200002);
      notifyDataSetChanged();
    }
  }
  
  public int getCount()
  {
    if (f != null) {
      return f.c().size();
    }
    return 0;
  }
  
  public Object getItem(int paramInt)
  {
    if (f != null) {
      return (ak)f.c().get(paramInt);
    }
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = g.a(g).inflate(2130903059, null);
      paramViewGroup = new af();
      a = ((TextView)paramView.findViewById(2131361825));
      b = ((TextView)paramView.findViewById(2131361951));
      c = ((TextView)paramView.findViewById(2131361950));
      d = ((ProgressBar)paramView.findViewById(2131361953));
      e = ((ImageView)paramView.findViewById(2131361952));
      f = ((CheckBox)paramView.findViewById(2131361954));
      paramView.setTag(2130903059, paramViewGroup);
    }
    ak localak;
    for (;;)
    {
      localak = (ak)getItem(paramInt);
      paramView.setTag(localak);
      if (paramInt != k) {
        break;
      }
      paramView.setVisibility(4);
      return paramView;
      paramViewGroup = (af)paramView.getTag(2130903059);
    }
    paramView.setVisibility(0);
    TextView localTextView1 = (TextView)paramView.findViewById(2131361949);
    localTextView1.setText(String.valueOf(paramInt + 1));
    String str;
    if (localak.c())
    {
      TextView localTextView2 = a;
      if ((e == null) || ("".equals(e)))
      {
        str = am.d(b);
        localTextView2.setText(str);
        b.setText(a(localak));
        c.setText(localak.a());
        label260:
        if (!c) {
          break label422;
        }
        f.setVisibility(0);
        if (!a(paramInt)) {
          break label411;
        }
        f.setChecked(true);
      }
    }
    for (;;)
    {
      if (h == paramInt)
      {
        a.setTextColor(-11751937);
        localTextView1.setTextColor(-11751937);
        b.setTextColor(-11751937);
        c.setTextColor(-11751937);
        if (j)
        {
          d.setVisibility(0);
          return paramView;
          str = e;
          break;
          a.setText(am.d(b));
          b.setText("");
          c.setText("");
          a.a(paramInt, localak, paramView);
          break label260;
          label411:
          f.setChecked(false);
          continue;
          label422:
          f.setVisibility(8);
          continue;
        }
        d.setVisibility(8);
        return paramView;
      }
    }
    a.setTextColor(b.d(2131230778));
    localTextView1.setTextColor(b.d(2131230778));
    b.setTextColor(b.d(2131230779));
    c.setTextColor(b.d(2131230779));
    d.setVisibility(8);
    return paramView;
  }
  
  protected int[] h()
  {
    int n;
    int m;
    int i1;
    if (d.size() >= 2)
    {
      n = ((Integer)d.get(0)).intValue();
      m = ((Integer)d.get(0)).intValue();
      Iterator localIterator = d.iterator();
      if (localIterator.hasNext())
      {
        i1 = ((Integer)localIterator.next()).intValue();
        if (n > i1) {
          n = i1;
        }
      }
    }
    for (;;)
    {
      break;
      if (m < i1)
      {
        m = i1;
        continue;
        return new int[] { n, m };
        return null;
      }
    }
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (c)
    {
      if (d.contains(Integer.valueOf(paramInt))) {
        d.remove(Integer.valueOf(paramInt));
      }
      for (;;)
      {
        e.sendEmptyMessage(1200002);
        notifyDataSetChanged();
        return;
        d.add(Integer.valueOf(paramInt));
      }
    }
    paramAdapterView = e.obtainMessage(1200003);
    arg1 = paramInt;
    if (h == paramInt) {}
    for (paramInt = 1;; paramInt = 0)
    {
      arg2 = paramInt;
      e.sendMessage(paramAdapterView);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */