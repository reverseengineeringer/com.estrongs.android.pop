package com.estrongs.android.pop.app;

import android.app.Activity;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.estrongs.a.a.p;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.esclasses.ESResourceActivity;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.dialog.jh;
import com.estrongs.android.ui.pcs.l;
import com.estrongs.android.ui.pcs.q;
import com.estrongs.android.ui.pcs.u;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.fs.b.ar;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import java.io.File;

public class DownloaderActivity
  extends ESResourceActivity
{
  private String a = null;
  private c b = null;
  
  public static ci a(Activity paramActivity, String paramString1, String paramString2)
  {
    return a(paramActivity, paramString1, paramString2, null);
  }
  
  public static ci a(Activity paramActivity, String paramString1, String paramString2, p paramp, boolean paramBoolean1, String paramString3, boolean paramBoolean2)
  {
    return a(paramActivity, paramString1, paramString2, paramp, paramBoolean1, paramString3, paramBoolean2, null);
  }
  
  public static ci a(Activity paramActivity, String paramString1, String paramString2, p paramp, boolean paramBoolean1, String paramString3, boolean paramBoolean2, String paramString4)
  {
    return a(paramActivity, paramString1, paramString2, paramp, paramBoolean1, paramString3, paramBoolean2, null, false);
  }
  
  public static ci a(Activity paramActivity, String paramString1, String paramString2, p paramp, boolean paramBoolean1, String paramString3, boolean paramBoolean2, String paramString4, boolean paramBoolean3)
  {
    File localFile = new File(paramString1);
    if (!localFile.exists()) {
      localFile.mkdirs();
    }
    paramString1 = paramActivity.getString(2131230847);
    String str = paramActivity.getString(2131231383, new Object[] { ap.F(paramString2) });
    paramString3 = new com.estrongs.fs.b.ad(d.a(paramActivity), paramString2, localFile.getAbsolutePath(), paramBoolean1, paramString3);
    if (bk.b(paramString4)) {
      paramString3.recordSummary("title", paramString4);
    }
    f = paramBoolean2;
    g = paramBoolean3;
    paramString3.setDescription(paramString1.concat(" ").concat(ap.F(paramString2)));
    if (paramp != null) {
      paramString3.addTaskStatusChangeListener(paramp);
    }
    paramActivity = new bc(paramActivity, paramString1, paramString3, str, paramString2);
    paramActivity.a(false);
    paramActivity.show();
    paramActivity.c();
    paramString3.execute();
    return paramActivity;
  }
  
  public static ci a(Activity paramActivity, String paramString1, String paramString2, String paramString3)
  {
    return a(paramActivity, com.estrongs.android.pop.ad.a(paramActivity).A(), paramString1, null, true, paramString2, true, paramString3);
  }
  
  private static jh a(Activity paramActivity, ar paramar, boolean paramBoolean)
  {
    ba localba = new ba(paramActivity, paramActivity.getString(2131231387), paramar, paramActivity.getString(2131231383, new Object[] { ap.F(c.b) }), paramar, paramActivity);
    localba.a(false);
    localba.a(paramActivity.getString(2131231388));
    localba.setOnDismissListener(new bb(paramar, paramBoolean, paramActivity));
    localba.c();
    return localba;
  }
  
  public static void a(Activity paramActivity, q paramq, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    bd localbd = new bd(paramActivity, paramq, paramOnCancelListener);
    be localbe = new be(paramActivity, paramq, paramOnCancelListener);
    paramq = new bf(paramActivity, paramq, paramOnCancelListener);
    if (com.estrongs.android.pop.ad.a(paramActivity).a(0L) != null)
    {
      new cv(paramActivity).a(2131231387).b(2131231957).d(2131232267, localbe).e(2131232468, paramq).f(2131230863, localbd).a(paramOnCancelListener).c();
      return;
    }
    new cv(paramActivity).a(2131231387).b(2131231957).c(2131232267, localbe).b(2131230863, localbd).a(paramOnCancelListener).c();
  }
  
  public static void a(Activity paramActivity, h paramh, boolean paramBoolean)
  {
    String str1 = "";
    if ((paramh instanceof com.estrongs.fs.impl.pcs.a)) {
      str1 = b;
    }
    String str2 = com.estrongs.android.pop.ad.a(paramActivity).af();
    if ((paramh instanceof com.estrongs.fs.impl.pcs.a)) {}
    for (paramh = new ar(d.a(paramActivity), str2, (com.estrongs.fs.impl.pcs.a)paramh);; paramh = new ar(d.a(paramActivity), str2, str1))
    {
      paramh.setDescription(paramActivity.getString(2131230847) + str1);
      a(paramActivity, paramh, paramBoolean).show();
      paramh.execute();
      return;
    }
  }
  
  public static void a(Activity paramActivity, String paramString, boolean paramBoolean)
  {
    String str = com.estrongs.android.pop.ad.a(paramActivity).af();
    paramString = new ar(d.a(paramActivity), str, paramString);
    a(paramActivity, paramString, paramBoolean).show();
    paramString.execute();
  }
  
  private void a(String paramString1, String paramString2)
  {
    a(this, a, paramString2).setOnDismissListener(new az(this));
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    l locall = u.a().j();
    if (locall != null) {
      locall.a(paramInt1, paramIntent, paramInt2);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = c.a(this);
    if (!getIntent().getBooleanExtra("islocalopen", false)) {}
    try
    {
      b.d("act3");
      b.a("act3", "download_manager");
      paramBundle = getIntent().getData();
      if (paramBundle != null)
      {
        a = Uri.decode(paramBundle.toString());
        if (a != null) {
          break label108;
        }
        b(2131231385);
        finish();
      }
    }
    catch (Exception paramBundle)
    {
      for (;;)
      {
        paramBundle.printStackTrace();
        continue;
        a = null;
      }
      label108:
      if (!cl.a())
      {
        a(a, getIntent().getType());
        return;
      }
      Object localObject = new aw(this);
      paramBundle = new ci(this);
      paramBundle.setTitle(2131230847);
      paramBundle.setOnCancelListener((DialogInterface.OnCancelListener)localObject);
      paramBundle.setSelectable(false);
      String str1 = getString(2131231386);
      String str2 = getString(2131231387);
      localObject = new ax(this, (DialogInterface.OnCancelListener)localObject);
      paramBundle.setItems(new String[] { str1, str2 }, -1, (DialogInterface.OnClickListener)localObject);
      paramBundle.show();
      com.estrongs.android.pop.app.ad.a.a().a("download");
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.DownloaderActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */