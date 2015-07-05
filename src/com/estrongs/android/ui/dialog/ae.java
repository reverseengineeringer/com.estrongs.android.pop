package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.CheckBox;
import android.widget.ListView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.fs.h;
import java.util.HashMap;

public class ae
{
  Handler a;
  am b;
  PackageManager c;
  Context d;
  CheckBox e;
  h f;
  private HashMap<String, Drawable> g = new HashMap();
  
  public ae(Context paramContext, h paramh)
  {
    c = paramContext.getPackageManager();
    a = new Handler();
    d = paramContext;
    f = paramh;
    View localView = a(paramContext);
    paramh = new ct(paramContext).a(2131428460).a(localView).b(paramContext.getResources().getString(2131427339), new af(this, paramContext, paramh)).c(paramContext.getResources().getString(2131427340), null).b();
    paramh.show();
    int i = getResourcesgetDisplayMetricswidthPixels;
    paramh.getWindow().setLayout(i, -2);
    b();
  }
  
  private void b()
  {
    new Thread(new ak(this)).start();
  }
  
  protected int a()
  {
    return 2130903051;
  }
  
  protected View a(Context paramContext)
  {
    b = new am(this);
    View localView = g.a(paramContext).inflate(a(), null);
    ListView localListView = (ListView)localView.findViewById(2131361893);
    localListView.setCacheColorHint(0);
    localListView.setEmptyView(localView.findViewById(2131361894));
    localListView.setAdapter(b);
    e = ((CheckBox)localView.findViewById(2131361892));
    localListView.setOnItemClickListener(new ai(this));
    a(0);
    e.setOnClickListener(new aj(this, paramContext));
    return localView;
  }
  
  protected void a(int paramInt)
  {
    boolean bool2 = true;
    CheckBox localCheckBox = e;
    boolean bool1;
    label45:
    Resources localResources;
    if (paramInt != 0)
    {
      bool1 = true;
      localCheckBox.setEnabled(bool1);
      localCheckBox = e;
      if ((paramInt == 0) || (!ad.a(d).aF())) {
        break label96;
      }
      bool1 = bool2;
      localCheckBox.setChecked(bool1);
      localCheckBox = e;
      localResources = d.getResources();
      if (!e.isEnabled()) {
        break label101;
      }
    }
    label96:
    label101:
    for (paramInt = 2131230739;; paramInt = 2131230740)
    {
      localCheckBox.setTextColor(localResources.getColor(paramInt));
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label45;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */