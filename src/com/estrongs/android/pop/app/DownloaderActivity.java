package com.estrongs.android.pop.app;

import android.app.Activity;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.estrongs.a.a.p;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.utils.cc;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.dialog.ix;
import com.estrongs.android.ui.pcs.j;
import com.estrongs.android.ui.pcs.n;
import com.estrongs.android.ui.pcs.r;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.fs.b.ap;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import java.io.File;

public class DownloaderActivity
  extends ESActivity
{
  private String a = null;
  
  public static cg a(Activity paramActivity, String paramString1, String paramString2)
  {
    return a(paramActivity, paramString1, paramString2, null);
  }
  
  public static cg a(Activity paramActivity, String paramString1, String paramString2, p paramp, boolean paramBoolean1, String paramString3, boolean paramBoolean2)
  {
    return a(paramActivity, paramString1, paramString2, paramp, paramBoolean1, paramString3, paramBoolean2, null);
  }
  
  public static cg a(Activity paramActivity, String paramString1, String paramString2, p paramp, boolean paramBoolean1, String paramString3, boolean paramBoolean2, String paramString4)
  {
    File localFile = new File(paramString1);
    if (!localFile.exists()) {
      localFile.mkdirs();
    }
    paramString1 = paramActivity.getString(2131427359);
    String str = paramActivity.getString(2131427722, new Object[] { am.D(paramString2) });
    paramString3 = new com.estrongs.fs.b.ad(d.a(paramActivity), paramString2, localFile.getAbsolutePath(), paramBoolean1, paramString3);
    if (bd.b(paramString4)) {
      paramString3.recordSummary("title", paramString4);
    }
    f = paramBoolean2;
    paramString3.setDescription(paramString1.concat(" ").concat(am.D(paramString2)));
    if (paramp != null) {
      paramString3.addTaskStatusChangeListener(paramp);
    }
    paramActivity = new ay(paramActivity, paramString1, paramString3, str, paramString2);
    paramActivity.a(false);
    paramActivity.show();
    paramActivity.c();
    paramString3.execute();
    return paramActivity;
  }
  
  public static cg a(Activity paramActivity, String paramString1, String paramString2, String paramString3)
  {
    return a(paramActivity, com.estrongs.android.pop.ad.a(paramActivity).z(), paramString1, null, true, paramString2, true, paramString3);
  }
  
  private static ix a(Activity paramActivity, ap paramap, boolean paramBoolean)
  {
    aw localaw = new aw(paramActivity, paramActivity.getString(2131428549), paramap, paramActivity.getString(2131427722, new Object[] { am.D(c.b) }), paramap, paramActivity);
    localaw.a(false);
    localaw.a(paramActivity.getString(2131428552));
    localaw.setOnDismissListener(new ax(paramap, paramBoolean, paramActivity));
    localaw.c();
    return localaw;
  }
  
  public static void a(Activity paramActivity, n paramn, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    az localaz = new az(paramActivity, paramn, paramOnCancelListener);
    ba localba = new ba(paramActivity, paramn, paramOnCancelListener);
    paramn = new bb(paramActivity, paramn, paramOnCancelListener);
    if (com.estrongs.android.pop.ad.a(paramActivity).a(0L) != null) {
      new ct(paramActivity).a(2131428549).b(2131428595).d(2131427901, localba).e(2131428554, paramn).f(2131428201, localaz).a(paramOnCancelListener).c();
    }
    for (;;)
    {
      paramActivity = com.estrongs.android.util.a.a();
      if (paramActivity != null) {
        paramActivity.e("PCS_Home_Page_UV", "PCS_Home_Page_UV");
      }
      return;
      new ct(paramActivity).a(2131428549).b(2131428595).c(2131427901, localba).b(2131428201, localaz).a(paramOnCancelListener).c();
    }
  }
  
  public static void a(Activity paramActivity, h paramh, boolean paramBoolean)
  {
    String str1 = "";
    if ((paramh instanceof com.estrongs.fs.impl.pcs.a)) {
      str1 = b;
    }
    String str2 = com.estrongs.android.pop.ad.a(paramActivity).ae();
    if ((paramh instanceof com.estrongs.fs.impl.pcs.a)) {}
    for (paramh = new ap(d.a(paramActivity), str2, (com.estrongs.fs.impl.pcs.a)paramh);; paramh = new ap(d.a(paramActivity), str2, str1))
    {
      paramh.setDescription(paramActivity.getString(2131427359) + str1);
      a(paramActivity, paramh, paramBoolean).show();
      paramh.execute();
      return;
    }
  }
  
  public static void a(Activity paramActivity, String paramString, boolean paramBoolean)
  {
    String str = com.estrongs.android.pop.ad.a(paramActivity).ae();
    paramString = new ap(d.a(paramActivity), str, paramString);
    a(paramActivity, paramString, paramBoolean).show();
    paramString.execute();
  }
  
  private void a(String paramString1, String paramString2)
  {
    a(this, a, paramString2).setOnDismissListener(new av(this));
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    j localj = r.a().j();
    if (localj != null) {
      localj.a(paramInt1, paramIntent, paramInt2);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    paramBundle = getIntent().getData();
    if (paramBundle != null) {}
    for (a = Uri.decode(paramBundle.toString()); a == null; a = null)
    {
      d(2131427721);
      finish();
      return;
    }
    if (!cc.a())
    {
      a(a, getIntent().getType());
      return;
    }
    Object localObject = new as(this);
    paramBundle = new cg(this);
    paramBundle.setTitle(2131427359);
    paramBundle.setOnCancelListener((DialogInterface.OnCancelListener)localObject);
    paramBundle.setSelectable(false);
    String str1 = getString(2131428202);
    String str2 = getString(2131428549);
    localObject = new at(this, (DialogInterface.OnCancelListener)localObject);
    paramBundle.setItems(new String[] { str1, str2 }, -1, (DialogInterface.OnClickListener)localObject);
    paramBundle.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.DownloaderActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */