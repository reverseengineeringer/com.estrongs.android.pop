package com.estrongs.android.ui.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.i.a;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.ui.pcs.am;
import com.estrongs.android.ui.theme.at;
import java.util.ArrayList;
import java.util.List;

public class b
  extends BaseAdapter
{
  private List<c> a = new ArrayList();
  private Context b;
  private String[] c;
  private final int d = 4;
  
  public b(Context paramContext)
  {
    b = paramContext;
    c = b.getResources().getStringArray(2131492870);
    a.add(new c(this, c[0], 2130838175, "box"));
    a.add(new c(this, c[1], 2130838184, "sugarsync"));
    a.add(new c(this, c[2], 2130838176, "dropbox"));
    a.add(new c(this, c[3], 2130838183, "onedrive"));
    a.add(new c(this, c[4], 2130838178, "gdrive"));
    a.add(new c(this, c[5], 2130838182, "s3"));
    a.add(new c(this, c[6], 2130838186, "yandex"));
    a.add(new c(this, c[7], 2130838181, "megacloud"));
    a.add(new c(this, c[8], 2130838179, "kuaipan"));
    a.add(new c(this, c[9], 2130838185, "vdisk"));
    a.add(new c(this, c[10], 2130838174, "pcs"));
    a.add(new c(this, c[11], 2130838180, "mediafire"));
    paramContext = cl.c();
    if (am.a(b)) {
      a("megacloud");
    }
    for (;;)
    {
      if (a.a("cloud_mega", 0) == 0) {
        a("megacloud");
      }
      return;
      if ((!"TW".equalsIgnoreCase(paramContext)) && (!"HK".equalsIgnoreCase(paramContext)))
      {
        a("vdisk");
        a("kuaipan");
      }
    }
  }
  
  private void a(String paramString)
  {
    int i = 0;
    for (;;)
    {
      if (i < a.size())
      {
        if (c.a((c)a.get(i)).equals(paramString)) {
          a.remove(i);
        }
      }
      else {
        return;
      }
      i += 1;
    }
  }
  
  public String a(int paramInt)
  {
    return c.b((c)a.get(paramInt));
  }
  
  public int b(int paramInt)
  {
    return c.c((c)a.get(paramInt));
  }
  
  public String c(int paramInt)
  {
    return c.a((c)a.get(paramInt));
  }
  
  public int getCount()
  {
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
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = k.a(b).inflate(2130903247, null);
    }
    ((ImageView)paramViewGroup.findViewById(2131624959)).setImageResource(b(paramInt));
    paramView = (TextView)paramViewGroup.findViewById(2131624960);
    paramView.setTextColor(at.a(b).c(2131558661));
    paramView.setText(a(paramInt));
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */