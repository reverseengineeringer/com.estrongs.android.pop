package com.estrongs.android.ui.a;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.utils.cc;
import com.estrongs.android.ui.pcs.aj;
import com.estrongs.android.ui.theme.al;
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
    c = b.getResources().getStringArray(2131165190);
    a.add(new c(this, c[0], 2130837874, "box"));
    a.add(new c(this, c[1], 2130837884, "sugarsync"));
    a.add(new c(this, c[2], 2130837875, "dropbox"));
    a.add(new c(this, c[3], 2130837883, "onedrive"));
    a.add(new c(this, c[4], 2130837877, "gdrive"));
    a.add(new c(this, c[5], 2130837882, "s3"));
    a.add(new c(this, c[6], 2130837886, "yandex"));
    a.add(new c(this, c[7], 2130837879, "kuaipan"));
    a.add(new c(this, c[8], 2130837878, "kanbox"));
    a.add(new c(this, c[9], 2130837885, "vdisk"));
    a.add(new c(this, c[10], 2130837873, "pcs"));
    a.add(new c(this, c[11], 2130837880, "mediafire"));
    paramContext = cc.e();
    if (aj.a(b)) {}
    while (("TW".equalsIgnoreCase(paramContext)) || ("HK".equalsIgnoreCase(paramContext))) {
      return;
    }
    a("vdisk");
    a("kanbox");
    a("kuaipan");
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
      paramViewGroup = g.a(b).inflate(2130903139, null);
    }
    ((ImageView)paramViewGroup.findViewById(2131362351)).setImageResource(b(paramInt));
    paramView = (TextView)paramViewGroup.findViewById(2131362352);
    paramView.setTextColor(al.a(b).d(2131230738));
    paramView.setText(a(paramInt));
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */