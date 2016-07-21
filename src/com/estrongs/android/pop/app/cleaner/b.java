package com.estrongs.android.pop.app.cleaner;

import android.content.Context;
import android.os.Handler;
import android.support.v7.widget.RecyclerView.Adapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.estrongs.android.cleaner.h;
import com.estrongs.android.ui.theme.at;
import com.estrongs.fs.util.j;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class b
  extends RecyclerView.Adapter<com.estrongs.android.pop.app.cleaner.a.b>
{
  private final int a = -1;
  private final int b = 6;
  private List<h> c;
  private boolean[] d;
  private Context e;
  private int f;
  private Handler g;
  
  public b(Context paramContext, int paramInt)
  {
    e = paramContext;
    f = paramInt;
    g = new Handler();
    c = new CopyOnWriteArrayList();
  }
  
  private h a(int paramInt)
  {
    if (c == null) {}
    while ((paramInt >= c.size()) || (paramInt < 0)) {
      return null;
    }
    return (h)c.get(paramInt);
  }
  
  private int b(int paramInt)
  {
    return at.a(e).c(paramInt);
  }
  
  public com.estrongs.android.pop.app.cleaner.a.b a(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramInt == -1)
    {
      paramViewGroup = new TextView(paramViewGroup.getContext());
      paramViewGroup.setLayoutParams(new LinearLayout.LayoutParams(300, f));
      paramViewGroup.setVisibility(4);
      return new com.estrongs.android.pop.app.cleaner.a.b(paramViewGroup);
    }
    paramViewGroup = new com.estrongs.android.pop.app.cleaner.a.b(LayoutInflater.from(e).inflate(2130903297, paramViewGroup, false));
    b.setTextColor(b(2131558540));
    e.setTextColor(b(2131558537));
    c.setTextColor(b(2131558537));
    d.setTextColor(b(2131558537));
    f.setVisibility(8);
    return paramViewGroup;
  }
  
  public void a(com.estrongs.android.pop.app.cleaner.a.b paramb)
  {
    super.onViewRecycled(paramb);
  }
  
  public void a(com.estrongs.android.pop.app.cleaner.a.b paramb, int paramInt)
  {
    if (getItemViewType(paramInt) == -1) {}
    h localh;
    do
    {
      return;
      localh = a(paramInt);
    } while (localh == null);
    b.setText(localh.m());
    e.setText(j.c(localh.j()));
    localh.a(a);
    d.setText(localh.k());
  }
  
  public void a(List<h> paramList)
  {
    c.clear();
    c.addAll(paramList);
    d = new boolean[paramList.size()];
    Arrays.fill(d, false);
    notifyDataSetChanged();
  }
  
  public int getItemCount()
  {
    if ((c == null) || (c.isEmpty())) {
      return 0;
    }
    return c.size() + 1;
  }
  
  public int getItemViewType(int paramInt)
  {
    if (paramInt >= getItemCount() - 1) {
      return -1;
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */