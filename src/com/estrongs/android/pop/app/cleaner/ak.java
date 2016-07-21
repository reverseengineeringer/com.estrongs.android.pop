package com.estrongs.android.pop.app.cleaner;

import android.content.Context;
import android.support.v7.widget.RecyclerView.Adapter;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.cleaner.h;
import com.estrongs.android.pop.app.cleaner.a.c;
import com.estrongs.fs.util.j;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class ak
  extends RecyclerView.Adapter<c>
{
  private Context a;
  private List<h> b;
  private boolean[] c;
  
  public ak(Context paramContext)
  {
    a = paramContext;
    b = new CopyOnWriteArrayList();
  }
  
  private h a(int paramInt)
  {
    if (b == null) {
      return null;
    }
    return (h)b.get(paramInt);
  }
  
  private void c(h paramh)
  {
    if (b == null) {}
    int i;
    do
    {
      return;
      i = b.indexOf(paramh);
    } while ((i < 0) || (i >= getItemCount()));
    notifyItemChanged(i);
  }
  
  public c a(ViewGroup paramViewGroup, int paramInt)
  {
    return new c(LayoutInflater.from(a).inflate(2130903298, paramViewGroup, false));
  }
  
  public void a(h paramh)
  {
    try
    {
      c(paramh);
      return;
    }
    finally
    {
      paramh = finally;
      throw paramh;
    }
  }
  
  public void a(c paramc, int paramInt)
  {
    if (c[paramInt] != 0)
    {
      e.setVisibility(0);
      d.setVisibility(4);
    }
    for (;;)
    {
      h localh = a(paramInt);
      b.setText(localh.m());
      c.setText(j.c(localh.j()));
      localh.a(a);
      return;
      e.setVisibility(4);
      d.setVisibility(0);
    }
  }
  
  public void a(List<h> paramList)
  {
    if (paramList == null) {
      return;
    }
    c = new boolean[paramList.size()];
    Arrays.fill(c, false);
    b.clear();
    b.addAll(paramList);
    notifyDataSetChanged();
  }
  
  public boolean a()
  {
    int i = 0;
    while (i < c.length)
    {
      if (c[i] == 0) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  /* Error */
  public void b(h paramh)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 24	com/estrongs/android/pop/app/cleaner/ak:b	Ljava/util/List;
    //   6: astore_3
    //   7: aload_3
    //   8: ifnonnull +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: getfield 24	com/estrongs/android/pop/app/cleaner/ak:b	Ljava/util/List;
    //   18: aload_1
    //   19: invokeinterface 39 2 0
    //   24: istore_2
    //   25: iload_2
    //   26: iflt -15 -> 11
    //   29: iload_2
    //   30: aload_0
    //   31: invokevirtual 43	com/estrongs/android/pop/app/cleaner/ak:getItemCount	()I
    //   34: if_icmpge -23 -> 11
    //   37: aload_0
    //   38: getfield 69	com/estrongs/android/pop/app/cleaner/ak:c	[Z
    //   41: iload_2
    //   42: iconst_1
    //   43: bastore
    //   44: aload_0
    //   45: iload_2
    //   46: invokevirtual 47	com/estrongs/android/pop/app/cleaner/ak:notifyItemChanged	(I)V
    //   49: goto -38 -> 11
    //   52: astore_1
    //   53: aload_0
    //   54: monitorexit
    //   55: aload_1
    //   56: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	57	0	this	ak
    //   0	57	1	paramh	h
    //   24	22	2	i	int
    //   6	2	3	localList	List
    // Exception table:
    //   from	to	target	type
    //   2	7	52	finally
    //   14	25	52	finally
    //   29	49	52	finally
  }
  
  public int getItemCount()
  {
    if (b == null) {
      return 0;
    }
    return b.size();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */