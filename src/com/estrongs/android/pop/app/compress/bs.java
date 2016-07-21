package com.estrongs.android.pop.app.compress;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Handler;
import com.estrongs.android.view.ak;
import com.estrongs.android.view.g;
import com.estrongs.io.archive.i;
import com.estrongs.io.model.ArchiveEntryFile;

public class bs
  extends ProgressDialog
{
  boolean a = false;
  private i b;
  private Handler c;
  private String d;
  private ArchiveEntryFile e;
  private String f;
  private boolean g = true;
  private g h;
  private Context i;
  private ak j;
  
  public bs(ak paramak, Context paramContext, Handler paramHandler, i parami)
  {
    super(paramContext);
    i = paramContext;
    j = paramak;
    c = paramHandler;
    b = parami;
    setMessage(paramContext.getText(2131232552));
    setProgressStyle(0);
    setButton2(paramContext.getText(2131231265), new bu(this));
  }
  
  public bs(g paramg, Context paramContext, Handler paramHandler, i parami)
  {
    super(paramContext);
    i = paramContext;
    h = paramg;
    c = paramHandler;
    b = parami;
    setMessage(paramContext.getText(2131232552));
    setProgressStyle(0);
    setButton2(paramContext.getText(2131231265), new bt(this));
  }
  
  public void a(ArchiveEntryFile paramArchiveEntryFile)
  {
    e = paramArchiveEntryFile;
  }
  
  public void a(String paramString)
  {
    f = paramString;
  }
  
  public boolean a()
  {
    return g;
  }
  
  public void b(String paramString)
  {
    d = paramString;
  }
  
  public void onStart()
  {
    new bv(this).start();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */