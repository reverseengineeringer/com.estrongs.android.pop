package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ListView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.fs.h;
import java.util.HashMap;

public class ag
{
  Handler a;
  ao b;
  PackageManager c;
  Context d;
  CheckBox e;
  h f;
  private HashMap<String, Drawable> g = new HashMap();
  
  public ag(Context paramContext, h paramh)
  {
    c = paramContext.getPackageManager();
    a = new Handler();
    d = paramContext;
    f = paramh;
    View localView = a(paramContext);
    new cv(paramContext).a(2131231039).a(localView).b(paramContext.getResources().getString(2131231270), new ah(this, paramContext, paramh)).c(paramContext.getResources().getString(2131231265), null).b().show();
    b();
  }
  
  private void b()
  {
    new Thread(new am(this)).start();
  }
  
  protected int a()
  {
    return 2130903113;
  }
  
  protected View a(Context paramContext)
  {
    b = new ao(this);
    View localView = k.a(paramContext).inflate(a(), null);
    ListView localListView = (ListView)localView.findViewById(2131624390);
    localListView.setCacheColorHint(0);
    localListView.setEmptyView(localView.findViewById(2131624391));
    localListView.setAdapter(b);
    e = ((CheckBox)localView.findViewById(2131624389));
    localListView.setOnItemClickListener(new ak(this));
    a(0);
    e.setOnClickListener(new al(this, paramContext));
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
      if ((paramInt == 0) || (!ad.a(d).aG())) {
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
    for (paramInt = 2131558657;; paramInt = 2131558659)
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
 * Qualified Name:     com.estrongs.android.ui.dialog.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */