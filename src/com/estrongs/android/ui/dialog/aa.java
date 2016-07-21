package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ListView;
import com.estrongs.android.pop.esclasses.k;
import java.util.HashMap;

public class aa
  extends ci
{
  Handler a;
  PackageManager b;
  protected boolean c = false;
  ad d;
  private HashMap<String, Drawable> e;
  
  public aa(Context paramContext)
  {
    super(paramContext);
    setTitle(2131230983);
    a(paramContext);
    setSingleButton(paramContext.getResources().getString(2131232178), null);
    e = new HashMap();
    b = paramContext.getPackageManager();
    c();
    a = new Handler();
  }
  
  private boolean a(String paramString)
  {
    return com.estrongs.android.pop.ad.b(mContext, paramString);
  }
  
  private void b()
  {
    ListView localListView = (ListView)findViewById(2131624350);
    localListView.setItemsCanFocus(true);
    localListView.setCacheColorHint(0);
    d = new ad(this, false);
    localListView.setAdapter(d);
  }
  
  private void c()
  {
    findViewById(2131624351).setVisibility(0);
    new Thread(new ab(this)).start();
  }
  
  protected int a()
  {
    return 2130903108;
  }
  
  protected void a(Context paramContext)
  {
    paramContext = k.a(paramContext).inflate(a(), null);
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
 * Qualified Name:     com.estrongs.android.ui.dialog.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */