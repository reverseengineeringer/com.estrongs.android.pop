package com.estrongs.android.pop.app;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.estrongs.android.a.u;
import com.estrongs.android.d.d;
import com.estrongs.android.d.f;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.imageviewer.CropImage;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.dialog.VerifyPasswordDialog;
import com.estrongs.android.ui.dialog.VerifyPasswordDialog.DialogType;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.aj;
import com.estrongs.android.util.am;
import com.estrongs.android.util.ay;
import com.estrongs.android.util.bc;
import com.estrongs.android.util.bd;
import com.estrongs.android.view.cc;
import com.estrongs.android.widget.g;
import com.estrongs.fs.m;
import java.io.File;

public class FileChooserActivity
  extends ESActivity
{
  g a;
  private boolean b = false;
  private boolean c = false;
  private Runnable d;
  private ad e;
  private final cc f = new cg(this);
  
  private boolean a()
  {
    String str = getIntent().getAction();
    return ("com.estrongs.action.PICK_FILE".equalsIgnoreCase(str)) || ("android.intent.action.PICK".equalsIgnoreCase(str)) || ("android.intent.action.GET_CONTENT".equalsIgnoreCase(str)) || ("android.intent.action.RINGTONE_PICKER".equalsIgnoreCase(str));
  }
  
  private boolean a(Intent paramIntent, String paramString)
  {
    int k = getIntent().getIntExtra("android.intent.extra.ringtone.TYPE", 0);
    Uri localUri = b(paramString);
    int m = bc.b(paramString);
    int i;
    int j;
    if ((bc.g(paramString)) && (131110 != m))
    {
      i = 1;
      j = i;
      if (i == 0)
      {
        if ((m != 196650) && (!a(paramString))) {
          break label100;
        }
        j = 1;
      }
      label66:
      if (j == 0) {
        break label131;
      }
    }
    label100:
    label131:
    for (paramString = aj.a(getContentResolver(), paramString, k);; paramString = localUri)
    {
      if (paramString == null)
      {
        ag.a(this, 2131428335, 1);
        return false;
        i = 0;
        break;
        j = 0;
        break label66;
      }
      paramIntent.putExtra("android.intent.extra.ringtone.TYPE", k);
      paramIntent.putExtra("android.intent.extra.ringtone.PICKED_URI", paramString);
      paramIntent.setData(paramString);
      return true;
    }
  }
  
  private Uri b(String paramString)
  {
    return FileContentProvider.a(paramString);
  }
  
  private void b(com.estrongs.fs.h paramh)
  {
    if (c) {
      if ((am.bb(paramh.getAbsolutePath())) && (paramh.getFileType().b())) {
        ag.a(this, 2131428512, 0);
      }
    }
    Object localObject2;
    Object localObject1;
    do
    {
      return;
      setResult(-1, ay.b(this, paramh));
      finish();
      return;
      localObject2 = paramh.getAbsolutePath();
      localObject1 = am.bk((String)localObject2);
      e.K((String)localObject1);
    } while (!a(paramh));
    Intent localIntent = new Intent();
    if (am.bb((String)localObject2))
    {
      u.a(this, getString(2131427442), getString(2131427869) + "\n" + getString(2131427870));
      new Thread(new ch(this, (String)localObject2, paramh, localIntent)).start();
      return;
    }
    if (am.ba((String)localObject2)) {}
    for (paramh = Uri.fromFile(new File((String)localObject2));; paramh = Uri.parse((String)localObject2))
    {
      if (!"android.intent.action.RINGTONE_PICKER".equals(getIntent().getAction())) {
        break label228;
      }
      if (!a(localIntent, (String)localObject2)) {
        break;
      }
      setResult(-1, localIntent);
      finish();
      return;
    }
    label228:
    if (bc.c((String)localObject2))
    {
      if (b)
      {
        localObject1 = new Bundle();
        ((Bundle)localObject1).putBoolean("setWallpaper", true);
        localObject2 = new Intent();
        ((Intent)localObject2).setData(paramh);
        ((Intent)localObject2).setClass(this, CropImage.class);
        ((Intent)localObject2).putExtras((Bundle)localObject1);
        startActivityForResult((Intent)localObject2, 268439577);
        return;
      }
      Bundle localBundle = getIntent().getExtras();
      if (localBundle != null) {}
      for (localObject1 = localBundle.getString("crop"); localObject1 != null; localObject1 = null)
      {
        localObject2 = new Bundle();
        if (((String)localObject1).equals("circle")) {
          ((Bundle)localObject2).putString("circleCrop", "true");
        }
        localObject1 = new Intent();
        ((Intent)localObject1).setData(paramh);
        ((Intent)localObject1).setClass(this, CropImage.class);
        ((Intent)localObject1).putExtras((Bundle)localObject2);
        ((Intent)localObject1).putExtras(localBundle);
        startActivityForResult((Intent)localObject1, 268439577);
        return;
      }
      if ((localBundle != null) && (localBundle.getBoolean("return-data"))) {
        localIntent.putExtra("data", com.estrongs.android.d.h.a(this).a(getIntent().getIntExtra("outputX", 64), (String)localObject2, null));
      }
      for (;;)
      {
        setResult(-1, localIntent);
        finish();
        return;
        paramh = com.estrongs.android.util.i.a().b(getContentResolver(), (String)localObject2);
        if (paramh != null) {
          localIntent.setData(paramh);
        } else {
          localIntent.setData(Uri.fromFile(new File((String)localObject2)));
        }
      }
    }
    if ((bc.g((String)localObject2)) || (bc.h((String)localObject2)))
    {
      localIntent.setData(b((String)localObject2));
      setResult(-1, localIntent);
      finish();
      return;
    }
    if (z.as)
    {
      localIntent.setData(b((String)localObject2));
      setResult(-1, localIntent);
      finish();
      return;
    }
    new ct(this).a(2131427955).a(2131165195, -1, new by(this, localIntent, (String)localObject2, paramh)).a(2131427340, null).b().show();
  }
  
  public void a(int paramInt)
  {
    ag.a(this, getText(paramInt), 0);
  }
  
  protected boolean a(com.estrongs.fs.h paramh)
  {
    return true;
  }
  
  protected boolean a(String paramString)
  {
    if (paramString == null) {}
    while ((!paramString.endsWith(".cdf")) && (!paramString.endsWith(".dcf")) && (!paramString.endsWith(".DCF")) && (!paramString.endsWith(".CDF"))) {
      return false;
    }
    return true;
  }
  
  public void finish()
  {
    if ((a != null) && (a.l().isShowing())) {
      a.k();
    }
    if (d != null)
    {
      d.run();
      d = null;
    }
    VerifyPasswordDialog.a();
    super.finish();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 268439577) && (paramInt2 == -1))
    {
      setResult(paramInt2, paramIntent);
      finish();
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    paramBundle = getIntent().getType();
    if ((!bd.a(paramBundle)) && (paramBundle.startsWith("vnd.android.cursor.item")))
    {
      ag.a(this, 2131428093, 0);
      finish();
      return;
    }
    e = ad.a(this);
    boolean bool = e.p();
    Object localObject = getIntent().getDataString();
    if ((bd.a((CharSequence)localObject)) || (!am.ba((String)localObject)))
    {
      localObject = e.av();
      if (localObject != null)
      {
        paramBundle = (Bundle)localObject;
        if (((String)localObject).length() != 0) {}
      }
      else
      {
        paramBundle = b.b();
      }
      b = "android.intent.action.SET_WALLPAPER".equals(getIntent().getAction());
      c = "android.intent.action.CREATE_SHORTCUT".equals(getIntent().getAction());
      if ((!a()) && (!b) && (!c)) {
        break label392;
      }
      if (!f.b("65536")) {
        f.a(new d(this));
      }
      localObject = new bx(this, bool);
      bool = this instanceof ESRingtoneChooserActivity;
      if (z.S) {
        bool = true;
      }
      a = new g(this, paramBundle, (com.estrongs.fs.i)localObject, false, bool);
      a.a(f);
      if (c) {
        break label333;
      }
      a.a(getString(2131427340), null);
    }
    for (;;)
    {
      localObject = getIntent().getStringExtra("com.estrongs.intent.extra.TITLE");
      paramBundle = (Bundle)localObject;
      if (localObject == null) {
        paramBundle = getString(2131427849);
      }
      a.a(paramBundle);
      a.a(new cd(this));
      return;
      paramBundle = (Bundle)localObject;
      if (!((String)localObject).toLowerCase().startsWith("file:///")) {
        break;
      }
      paramBundle = ((String)localObject).substring(7);
      break;
      label333:
      a.c(getString(2131427340), null);
      localObject = getIntent().getStringExtra("com.estrongs.intent.extra.BUTTON_TITLE");
      paramBundle = (Bundle)localObject;
      if (localObject == null) {
        paramBundle = getString(2131427370);
      }
      a.b(paramBundle, new bz(this));
      continue;
      label392:
      a = new g(this, paramBundle, new ca(this, bool), true, true);
      localObject = getIntent().getStringExtra("com.estrongs.intent.extra.BUTTON_TITLE");
      if (localObject != null)
      {
        paramBundle = (Bundle)localObject;
        if (((String)localObject).length() != 0) {}
      }
      else
      {
        paramBundle = getString(2131427370);
      }
      a.b(paramBundle, new cb(this));
      a.c(getString(2131427340), null);
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (a.l().isShowing()) {
      a.b();
    }
    for (;;)
    {
      if (FexApplication.a().i())
      {
        d = new ce(this);
        VerifyPasswordDialog localVerifyPasswordDialog = VerifyPasswordDialog.a(this, VerifyPasswordDialog.DialogType.START);
        localVerifyPasswordDialog.a(new cf(this));
        localVerifyPasswordDialog.b();
      }
      return;
      a.j();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.FileChooserActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */