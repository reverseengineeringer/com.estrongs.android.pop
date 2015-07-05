package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ListView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.g;
import java.util.HashMap;

public class y
  extends cg
{
  Handler a;
  PackageManager b;
  protected boolean c = false;
  ab d;
  private HashMap<String, Drawable> e;
  
  public y(Context paramContext)
  {
    super(paramContext);
    setTitle(2131428669);
    a(paramContext);
    setSingleButton(paramContext.getResources().getString(2131427443), null);
    e = new HashMap();
    b = paramContext.getPackageManager();
    c();
    a = new Handler();
  }
  
  private boolean a(String paramString)
  {
    return ad.b(mContext, paramString);
  }
  
  private void b()
  {
    ListView localListView = (ListView)findViewById(2131361851);
    localListView.setItemsCanFocus(true);
    localListView.setCacheColorHint(0);
    d = new ab(this, false);
    localListView.setAdapter(d);
  }
  
  private void c()
  {
    findViewById(2131361852).setVisibility(0);
    new Thread(new z(this)).start();
  }
  
  protected int a()
  {
    return 2130903046;
  }
  
  protected void a(Context paramContext)
  {
    paramContext = g.a(paramContext).inflate(a(), null);
    paramContext.setMinimumWidth(1000);
    setContentView(paramContext);
    b();
  }
  
  public void a(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public void dismiss()
  {
    super.dismiss();
  }
  
  public void show()
  {
    super.show();
    if (c)
    {
      c = false;
      c();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */