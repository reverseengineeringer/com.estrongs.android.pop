package com.estrongs.android.view;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Environment;
import android.os.Handler;
import android.util.SparseBooleanArray;
import android.view.View;
import android.widget.LinearLayout;
import com.estrongs.android.pop.app.b;
import com.estrongs.android.pop.app.compress.be;
import com.estrongs.android.pop.app.compress.l;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bc;
import com.estrongs.android.widget.bw;
import com.estrongs.io.model.ArchiveEntryFile;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class e
  extends aw
{
  public String a = null;
  private com.estrongs.io.archive.h ai = null;
  private boolean aj = false;
  private int ak;
  private String al;
  private Map<String, File> am = new HashMap(10);
  private String an = "";
  private Handler ao;
  private File ap;
  private bw aq = null;
  private com.estrongs.android.pop.app.compress.aw ar;
  private SparseBooleanArray as = new SparseBooleanArray();
  private be at;
  private r au = null;
  private t av;
  public String b = com.estrongs.android.util.f.a[0];
  protected boolean c = false;
  protected String d;
  
  public e(Activity paramActivity, com.estrongs.fs.util.a.a parama, cb paramcb)
  {
    super(paramActivity, parama, paramcb, false);
    a(new f(this));
    ao = new h(this);
    aq = new i(this, ad);
  }
  
  private void al()
  {
    if (ai != null) {
      com.estrongs.fs.util.j.a(com.estrongs.fs.util.j.g(com.estrongs.android.pop.a.j + "/" + am.bB(am.d(ai.j()))));
    }
  }
  
  private void am()
  {
    Object localObject = am.values().iterator();
    while (((Iterator)localObject).hasNext())
    {
      File localFile = (File)((Iterator)localObject).next();
      if (localFile.exists()) {
        localFile.delete();
      }
    }
    am.clear();
    al();
    if (ad.getIntent().getBooleanExtra("isTmpFile", false))
    {
      localObject = am.aR(a);
      if (localObject != null) {}
    }
    while (c)
    {
      return;
      localObject = new File((String)localObject);
      ((File)localObject).delete();
      ((File)localObject).getParentFile().delete();
    }
    p();
  }
  
  private void b(List<com.estrongs.fs.h> paramList, boolean paramBoolean)
  {
    String str1 = am.aR(a);
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramList.size())
    {
      localArrayList.add(((com.estrongs.fs.h)paramList.get(i)).getPath());
      i += 1;
    }
    Activity localActivity = ad;
    String str2 = b;
    String str3 = al;
    if (d != null) {}
    for (paramList = d;; paramList = null)
    {
      paramList = new l(this, localActivity, str1, str2, str3, paramList, localArrayList, paramBoolean, true, ak, null);
      paramList.a(new g(this));
      paramList.b();
      return;
    }
  }
  
  private boolean o(String paramString)
  {
    if ((bc.m(paramString)) || ((paramString.toLowerCase().endsWith(".rar")) && (new com.estrongs.io.archive.sevenzip.c(paramString, "AUTO", null).e()))) {
      try
      {
        paramString = com.estrongs.io.archive.c.a(paramString, b, true);
        if (paramString.k())
        {
          ad.runOnUiThread(new j(this, paramString));
          return true;
        }
        au = new r(this);
        au.start();
        return true;
      }
      catch (IOException paramString)
      {
        paramString.printStackTrace();
        return true;
      }
    }
    return false;
  }
  
  private void p(String paramString)
  {
    try
    {
      if ((am.ba(paramString)) && (bc.b(paramString) == -1))
      {
        AppRunner.s(ad, paramString);
        return;
      }
      localIntent = b.a(ad, paramString);
      if (localIntent == null)
      {
        ag.a(ad, m(2131427782), 0);
        return;
      }
    }
    catch (Exception paramString)
    {
      Intent localIntent;
      if ((paramString instanceof ActivityNotFoundException))
      {
        ag.a(ad, m(2131427782), 0);
        return;
        if (bc.K(paramString))
        {
          a(localIntent);
          return;
        }
        localIntent.setComponent(null);
        AppRunner.a(ad, localIntent, paramString);
        return;
      }
      ag.a(ad, m(2131427861) + ":" + paramString.getMessage(), 0);
    }
  }
  
  public void a(t paramt)
  {
    av = paramt;
    c(m(2131427783));
    if (au != null) {
      au.a();
    }
    if (ai != null) {
      am();
    }
    new Thread(new n(this, am.aR(a))).start();
  }
  
  protected void a(com.estrongs.fs.h paramh, View paramView, int paramInt, long paramLong)
  {
    paramh = ((com.estrongs.fs.impl.e.a)paramh).a();
    paramView = paramh.getPath();
    if (paramh.isDirectory())
    {
      ap = paramh;
      g();
      if (y != null) {
        y.a(c(), true);
      }
      return;
    }
    if (bc.j(paramh.getName()))
    {
      ag.a(ad, m(2131427864), 0);
      return;
    }
    File localFile = (File)am.get(paramView);
    if (localFile == null)
    {
      an = paramView;
      if (ar == null) {
        ar = new com.estrongs.android.pop.app.compress.aw(this, ad, ao, ai);
      }
      paramh = (ArchiveEntryFile)paramh;
      ar.b(an);
      ar.a(paramh);
      if (d != null)
      {
        ar.a(d);
        ar.show();
        return;
      }
      if (at == null)
      {
        at = new be(ad, false, true);
        at.setButton(-1, l(2131427339), new o(this));
        at.setButton(-2, l(2131427340), new p(this));
      }
      if ((paramh.isEncrypted()) && ((ar.a()) || (!at.b())))
      {
        at.show();
        return;
      }
      ar.show();
      return;
    }
    p(localFile.getAbsolutePath());
  }
  
  public void a(String paramString)
  {
    try
    {
      paramString = ai.b(paramString);
      if (paramString != null)
      {
        ap = paramString;
        v = paramString.getAbsolutePath();
      }
      return;
    }
    catch (IOException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public void a(String paramString, TypedMap paramTypedMap)
  {
    if (ar != null) {
      ar = null;
    }
    a = paramString;
    v = paramString;
    if (y != null) {
      y.a(c(), true);
    }
    c(m(2131427783));
    if (au != null) {
      au.a();
    }
    if (ai != null) {
      am();
    }
    new Thread(new m(this, am.aR(a))).start();
  }
  
  protected void a(List<com.estrongs.fs.h> paramList)
  {
    u();
    c(paramList);
    int i = A.size();
    if (i == 0)
    {
      if (am.bg(c()))
      {
        if (am.aV(c()))
        {
          f(2131427741);
          return;
        }
        f(2131427827);
        return;
      }
      if (!"mounted".equals(Environment.getExternalStorageState()))
      {
        f(2131427826);
        return;
      }
      f(2131427825);
      return;
    }
    if (i < 200) {}
    for (;;)
    {
      R = i;
      b(A);
      return;
      i = 200;
    }
  }
  
  public void a(List<com.estrongs.fs.h> paramList, boolean paramBoolean)
  {
    w();
    String str = am.aR(a);
    if (aj)
    {
      b(paramList, paramBoolean);
      return;
    }
    new com.estrongs.android.pop.app.compress.a(ad, true, str, b, null, new q(this, str, paramList, paramBoolean)).a();
  }
  
  public void a_()
  {
    am();
    super.a_();
  }
  
  public void b(boolean paramBoolean)
  {
    if (ap == null) {
      return;
    }
    if ((ap != null) && (!"/".equals(ap.getPath()))) {}
    ArrayList localArrayList;
    for (Object localObject = a + '*' + ap.getPath();; localObject = a)
    {
      v = ((String)localObject);
      as.clear();
      A.clear();
      localObject = ap.listFiles();
      localArrayList = new ArrayList();
      int j = localObject.length;
      int i = 0;
      while (i < j)
      {
        localArrayList.add(new com.estrongs.fs.impl.e.a(localObject[i]));
        i += 1;
      }
    }
    a(localArrayList);
    u();
  }
  
  public String c()
  {
    return v;
  }
  
  public com.estrongs.fs.h f()
  {
    if ((ap == null) || ("/".equals(ap.getPath()))) {
      return null;
    }
    return j();
  }
  
  public void g()
  {
    b(false);
  }
  
  public com.estrongs.fs.h j()
  {
    if ((ap == null) || ("/".equals(ap.getPath()))) {
      return null;
    }
    ap = ap.getParentFile();
    g();
    if (y != null) {
      y.a(c(), true);
    }
    return new com.estrongs.fs.impl.e.a(ap);
  }
  
  public boolean o()
  {
    return p.getVisibility() == 0;
  }
  
  protected void p()
  {
    if (ai != null)
    {
      ai.d();
      ai.g();
    }
    try
    {
      ai.c();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
  
  public File q()
  {
    return ap;
  }
  
  public com.estrongs.io.archive.h r()
  {
    return ai;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */