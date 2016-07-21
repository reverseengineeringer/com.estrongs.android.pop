package com.estrongs.android.pop.app;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.estrongs.android.d.u;
import com.estrongs.android.h.d;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.imageviewer.CropImage;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.esclasses.ESResourceActivity;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.dialog.VerifyPasswordDialog;
import com.estrongs.android.ui.dialog.VerifyPasswordDialog.DialogType;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.am;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bc;
import com.estrongs.android.util.bg;
import com.estrongs.android.util.bk;
import com.estrongs.android.view.dx;
import com.estrongs.fs.i;
import com.estrongs.fs.impl.media.c;
import com.estrongs.fs.w;
import java.io.File;

public class FileChooserActivity
  extends ESResourceActivity
{
  com.estrongs.android.widget.f a;
  private boolean b = false;
  private boolean d = false;
  private Runnable e;
  private ad f;
  private final dx g = new ck(this);
  
  private boolean a()
  {
    String str = getIntent().getAction();
    return ("com.estrongs.action.PICK_FILE".equalsIgnoreCase(str)) || ("android.intent.action.PICK".equalsIgnoreCase(str)) || ("android.intent.action.GET_CONTENT".equalsIgnoreCase(str)) || ("android.intent.action.RINGTONE_PICKER".equalsIgnoreCase(str));
  }
  
  private boolean a(Intent paramIntent, String paramString)
  {
    int k = getIntent().getIntExtra("android.intent.extra.ringtone.TYPE", 0);
    Uri localUri = b(paramString);
    int m = bg.b(paramString);
    int i;
    int j;
    if ((bg.g(paramString)) && ((z.av) || (131110 != m)))
    {
      i = 1;
      j = i;
      if (i == 0)
      {
        if ((m != 196650) && (!a(paramString))) {
          break label106;
        }
        j = 1;
      }
      label72:
      if (j == 0) {
        break label137;
      }
    }
    label106:
    label137:
    for (paramString = am.a(getContentResolver(), paramString, k);; paramString = localUri)
    {
      if (paramString == null)
      {
        ak.a(this, 2131232323, 1);
        return false;
        i = 0;
        break;
        j = 0;
        break label72;
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
    if (d) {
      if ((ap.bm(paramh.getAbsolutePath())) && (paramh.getFileType().b())) {
        ak.a(this, 2131232274, 0);
      }
    }
    Object localObject2;
    Object localObject1;
    do
    {
      return;
      setResult(-1, bc.b(this, paramh));
      finish();
      return;
      localObject2 = paramh.getAbsolutePath();
      localObject1 = ap.bB((String)localObject2);
      f.K((String)localObject1);
    } while (!a(paramh));
    Intent localIntent = new Intent();
    if (ap.bm((String)localObject2))
    {
      u.a(this, getString(2131232182), getString(2131232005) + "\n" + getString(2131232553));
      new Thread(new cl(this, (String)localObject2, paramh, localIntent)).start();
      return;
    }
    if (ap.bl((String)localObject2)) {}
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
    if (bg.c((String)localObject2))
    {
      if (b)
      {
        localObject1 = new Bundle();
        ((Bundle)localObject1).putBoolean("setWallpaper", true);
        localObject2 = new Intent();
        ((Intent)localObject2).setData(paramh);
        ((Intent)localObject2).setClass(this, CropImage.class);
        ((Intent)localObject2).putExtras((Bundle)localObject1);
        startActivityForResult((Intent)localObject2, 4121);
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
        startActivityForResult((Intent)localObject1, 4121);
        return;
      }
      if ((localBundle != null) && (localBundle.getBoolean("return-data"))) {
        localIntent.putExtra("data", com.estrongs.android.h.h.a(this).a(getIntent().getIntExtra("outputX", 64), (String)localObject2, null));
      }
      for (;;)
      {
        setResult(-1, localIntent);
        finish();
        return;
        paramh = com.estrongs.android.util.h.a().b(getContentResolver(), (String)localObject2);
        if (paramh != null) {
          localIntent.setData(paramh);
        } else {
          localIntent.setData(Uri.fromFile(new File((String)localObject2)));
        }
      }
    }
    if (bg.g((String)localObject2))
    {
      localIntent.setData(c.d((String)localObject2));
      setResult(-1, localIntent);
      finish();
      return;
    }
    if (bg.h((String)localObject2))
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
    new cv(this).a(2131232003).a(2131492873, -1, new cc(this, localIntent, (String)localObject2, paramh)).a(2131231265, null).b().show();
  }
  
  public void a(int paramInt)
  {
    ak.a(this, getText(paramInt), 0);
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
    if (e != null)
    {
      e.run();
      e = null;
    }
    VerifyPasswordDialog.a();
    super.finish();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 4121) && (paramInt2 == -1))
    {
      setResult(paramInt2, paramIntent);
      finish();
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent().getType();
    if ((!bk.a(paramBundle)) && (paramBundle.startsWith("vnd.android.cursor.item")))
    {
      ak.a(this, 2131231905, 0);
      finish();
      return;
    }
    f = ad.a(this);
    boolean bool = f.q();
    Object localObject = getIntent().getDataString();
    if ((bk.a((CharSequence)localObject)) || (!ap.bl((String)localObject)))
    {
      localObject = f.aw();
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
      d = "android.intent.action.CREATE_SHORTCUT".equals(getIntent().getAction());
      if ((!a()) && (!b) && (!d)) {
        break label386;
      }
      if (!com.estrongs.android.h.f.b("65536")) {
        com.estrongs.android.h.f.a(new d(this));
      }
      localObject = new cb(this, bool);
      bool = this instanceof ESRingtoneChooserActivity;
      if (z.S) {
        bool = true;
      }
      a = new com.estrongs.android.widget.f(this, paramBundle, (i)localObject, false, bool);
      a.a(g);
      if (d) {
        break label327;
      }
      a.a(getString(2131231265), null);
    }
    for (;;)
    {
      localObject = getIntent().getStringExtra("com.estrongs.intent.extra.TITLE");
      paramBundle = (Bundle)localObject;
      if (localObject == null) {
        paramBundle = getString(2131232547);
      }
      a.a(paramBundle);
      a.a(new ch(this));
      return;
      paramBundle = (Bundle)localObject;
      if (!((String)localObject).toLowerCase().startsWith("file:///")) {
        break;
      }
      paramBundle = ((String)localObject).substring(7);
      break;
      label327:
      a.c(getString(2131231265), null);
      localObject = getIntent().getStringExtra("com.estrongs.intent.extra.BUTTON_TITLE");
      paramBundle = (Bundle)localObject;
      if (localObject == null) {
        paramBundle = getString(2131230720);
      }
      a.b(paramBundle, new cd(this));
      continue;
      label386:
      a = new com.estrongs.android.widget.f(this, paramBundle, new ce(this, bool), true, true);
      localObject = getIntent().getStringExtra("com.estrongs.intent.extra.BUTTON_TITLE");
      if (localObject != null)
      {
        paramBundle = (Bundle)localObject;
        if (((String)localObject).length() != 0) {}
      }
      else
      {
        paramBundle = getString(2131230720);
      }
      a.b(paramBundle, new cf(this));
      a.c(getString(2131231265), null);
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
        e = new ci(this);
        VerifyPasswordDialog localVerifyPasswordDialog = VerifyPasswordDialog.a(this, VerifyPasswordDialog.DialogType.START);
        localVerifyPasswordDialog.a(new cj(this));
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