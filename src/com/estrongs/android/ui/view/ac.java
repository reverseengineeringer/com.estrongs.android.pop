package com.estrongs.android.ui.view;

import android.content.Context;
import android.os.Handler;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.app.c.e;
import com.estrongs.android.pop.app.c.g;
import com.estrongs.android.pop.app.c.i;
import com.estrongs.android.pop.app.c.j;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.ap;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class ac
  extends RecyclerView.Adapter<aj>
{
  e a = null;
  at b;
  private boolean c = false;
  private List<Integer> d;
  private Handler e;
  private j f;
  private Context g;
  private int h = -1;
  private i i = null;
  private boolean j = false;
  private boolean k = false;
  private ItemTouchHelper l;
  
  public ac(Context paramContext, Handler paramHandler)
  {
    g = paramContext;
    e = paramHandler;
    b = at.a(g);
    h();
  }
  
  private String a(i parami)
  {
    if (f != null) {}
    for (String str1 = f;; str1 = "")
    {
      String str2 = str1;
      if (g == null) {
        str2 = str1 + g.getString(2131231045);
      }
      return str2;
    }
  }
  
  private void h()
  {
    a = new ad(this);
  }
  
  public j a()
  {
    return f;
  }
  
  public aj a(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup = k.a(g).inflate(2130903123, paramViewGroup, false);
    aj localaj = new aj(paramViewGroup);
    a = ((TextView)paramViewGroup.findViewById(2131624055));
    b = ((TextView)paramViewGroup.findViewById(2131624455));
    c = ((TextView)paramViewGroup.findViewById(2131624457));
    d = ((ProgressBar)paramViewGroup.findViewById(2131624456));
    e = ((CheckBox)paramViewGroup.findViewById(2131624070));
    f = ((ImageView)paramViewGroup.findViewById(2131624458));
    paramViewGroup.setTag(2130903123, localaj);
    return localaj;
  }
  
  public void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    h = paramInt;
    List localList = f.c();
    if ((paramInt != -1) && (localList.size() > paramInt)) {}
    for (i = ((i)localList.get(paramInt));; i = null)
    {
      j = paramBoolean1;
      k = paramBoolean2;
      return;
    }
  }
  
  public void a(ItemTouchHelper paramItemTouchHelper)
  {
    l = paramItemTouchHelper;
  }
  
  public void a(j paramj)
  {
    f = paramj;
    notifyDataSetChanged();
  }
  
  public void a(aj paramaj, int paramInt)
  {
    i locali = (i)b(paramInt);
    itemView.setTag(locali);
    itemView.setVisibility(0);
    TextView localTextView1 = (TextView)itemView.findViewById(2131624453);
    localTextView1.setText(String.valueOf(d + 1L));
    String str;
    if (locali.c())
    {
      TextView localTextView2 = a;
      if ((e == null) || ("".equals(e)))
      {
        str = ap.d(b);
        localTextView2.setText(str);
        b.setText(a(locali));
        c.setText(locali.a());
        label131:
        if (!c) {
          break label405;
        }
        e.setVisibility(0);
        f.setVisibility(8);
        if (!a(paramInt)) {
          break label394;
        }
        e.setChecked(true);
        label171:
        if (i != locali) {
          break label437;
        }
        a.setTextColor(b.c(2131558648));
        localTextView1.setTextColor(b.c(2131558648));
        b.setTextColor(b.c(2131558649));
        c.setTextColor(b.c(2131558745));
        if (!k) {
          break label425;
        }
        d.setVisibility(0);
      }
    }
    for (;;)
    {
      itemView.setFocusable(true);
      itemView.setOnClickListener(new af(this, paramInt));
      itemView.setOnLongClickListener(new ag(this));
      itemView.findViewById(2131624452).setOnTouchListener(new ah(this, paramaj));
      f.setOnClickListener(new ai(this, paramaj));
      return;
      str = e;
      break;
      a.setText(ap.d(b));
      b.setText("");
      c.setText("");
      a.a(paramInt, locali, itemView);
      break label131;
      label394:
      e.setChecked(false);
      break label171;
      label405:
      e.setVisibility(8);
      f.setVisibility(0);
      break label171;
      label425:
      d.setVisibility(8);
      continue;
      label437:
      a.setTextColor(b.c(2131558745));
      localTextView1.setTextColor(b.c(2131558745));
      b.setTextColor(b.c(2131558502));
      c.setTextColor(b.c(2131558745));
      d.setVisibility(8);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (c != paramBoolean)
    {
      c = paramBoolean;
      if (!paramBoolean) {
        break label63;
      }
      if (d != null) {
        break label51;
      }
      d = new LinkedList();
    }
    for (;;)
    {
      e.sendEmptyMessage(1200001);
      notifyDataSetChanged();
      return;
      label51:
      d.clear();
      continue;
      label63:
      d.clear();
    }
  }
  
  public boolean a(int paramInt)
  {
    return d.contains(Integer.valueOf(paramInt));
  }
  
  protected boolean a(g paramg)
  {
    return (d) && ((c.getTag() == null) || (b == c.getTag()));
  }
  
  public Object b(int paramInt)
  {
    if (f != null) {
      return (i)f.c().get(paramInt);
    }
    return null;
  }
  
  public boolean b()
  {
    return c;
  }
  
  public List<i> c()
  {
    LinkedList localLinkedList = new LinkedList();
    Collections.sort(d);
    Iterator localIterator = d.iterator();
    while (localIterator.hasNext()) {
      localLinkedList.add((i)b(((Integer)localIterator.next()).intValue()));
    }
    return localLinkedList;
  }
  
  public void d()
  {
    d.clear();
    int n = getItemCount();
    int m = 0;
    while (m < n)
    {
      d.add(Integer.valueOf(m));
      m += 1;
    }
    e.sendEmptyMessage(1200002);
    notifyDataSetChanged();
  }
  
  public void e()
  {
    d.clear();
    e.sendEmptyMessage(1200002);
    notifyDataSetChanged();
  }
  
  public void f()
  {
    int[] arrayOfInt = g();
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
  
  protected int[] g()
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
  
  public int getItemCount()
  {
    if (f != null) {
      return f.c().size();
    }
    return 0;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */