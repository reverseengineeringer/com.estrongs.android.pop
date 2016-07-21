package com.estrongs.android.ui.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView.Adapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.appinfo.AppFolderInfoManager;
import com.estrongs.android.pop.app.diskusage.e;
import com.estrongs.android.pop.esclasses.ESImageView;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.view.co;
import com.estrongs.android.view.cp;
import com.estrongs.android.widget.UsageImageView;
import java.io.File;
import java.util.List;

public class k
  extends RecyclerView.Adapter<r>
{
  Runnable a = new l(this);
  private Context b;
  private e c;
  private List<Integer> d = null;
  private boolean e = false;
  private at f;
  private co g;
  private cp h;
  private com.estrongs.android.appinfo.p i = new m(this);
  
  public k(Context paramContext, e parame)
  {
    b = paramContext;
    c = parame;
    f = at.a(b);
    a();
  }
  
  private void a()
  {
    File[] arrayOfFile = c.c();
    AppFolderInfoManager.d().a(arrayOfFile, new n(this));
  }
  
  public r a(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup = com.estrongs.android.pop.esclasses.k.a(b).inflate(2130903290, null);
    r localr = new r(paramViewGroup);
    a = ((ImageView)paramViewGroup.findViewById(2131625067));
    b = ((UsageImageView)paramViewGroup.findViewById(2131625068));
    c = ((TextView)paramViewGroup.findViewById(2131625069));
    c.setTextColor(f.i());
    d = ((TextView)paramViewGroup.findViewById(2131625070));
    d.setTextColor(f.i());
    e = ((TextView)paramViewGroup.findViewById(2131625071));
    e.setTextColor(f.i());
    f = ((TextView)paramViewGroup.findViewById(2131625072));
    f.setTextColor(f.i());
    g = ((CheckBox)paramViewGroup.findViewById(2131624070));
    return localr;
  }
  
  public Object a(int paramInt)
  {
    if (c != null) {
      return c.c(paramInt);
    }
    return null;
  }
  
  public void a(e parame)
  {
    c = parame;
  }
  
  public void a(r paramr, int paramInt)
  {
    if (c != null)
    {
      c.b(paramInt);
      a.setImageDrawable((Drawable)c.a(e.a));
      b.setRate(((Float)c.a(e.g)).floatValue());
      c.setText(c.a(e.b).toString());
      d.setText(c.a(e.c).toString());
      e.setText(c.a(e.f).toString());
      f.setText(c.a(e.e).toString());
      Object localObject = (File)c.c(paramInt);
      localObject = AppFolderInfoManager.d().a(b, (File)localObject, i);
      if (localObject != null) {
        ((ESImageView)a).a((Drawable)localObject, 0.5F);
      }
    }
    int j = itemView.getPaddingLeft();
    int k = itemView.getPaddingRight();
    int m = itemView.getPaddingTop();
    int n = itemView.getPaddingBottom();
    if (e)
    {
      g.setVisibility(0);
      if (d != null)
      {
        boolean bool = d.contains(Integer.valueOf(paramInt));
        g.setChecked(bool);
        if (!bool) {
          break label345;
        }
        itemView.setBackgroundResource(2130838143);
      }
    }
    for (;;)
    {
      itemView.setFocusable(true);
      itemView.setPadding(j, m, k, n);
      itemView.setOnClickListener(new p(this, paramInt));
      if (h == null) {
        break;
      }
      itemView.setOnLongClickListener(new q(this, paramInt));
      return;
      label345:
      itemView.setBackgroundDrawable(null);
      continue;
      g.setVisibility(8);
      itemView.setBackgroundResource(2130837674);
    }
    itemView.setOnLongClickListener(null);
  }
  
  public void a(co paramco)
  {
    g = paramco;
  }
  
  public void a(cp paramcp)
  {
    h = paramcp;
  }
  
  public void a(List<Integer> paramList)
  {
    d = paramList;
  }
  
  public void a(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public int getItemCount()
  {
    if (c != null) {
      return c.b();
    }
    return 0;
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */