package com.estrongs.android.pop.app.compress;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Handler;
import com.estrongs.android.view.e;
import com.estrongs.io.archive.h;
import com.estrongs.io.model.ArchiveEntryFile;

public class aw
  extends ProgressDialog
{
  boolean a = false;
  private h b;
  private Handler c;
  private String d;
  private ArchiveEntryFile e;
  private String f;
  private boolean g = true;
  private e h;
  private Context i;
  
  public aw(e parame, Context paramContext, Handler paramHandler, h paramh)
  {
    super(paramContext);
    i = paramContext;
    h = parame;
    c = paramHandler;
    b = paramh;
    setMessage(paramContext.getText(2131427783));
    setProgressStyle(0);
    setButton2(paramContext.getText(2131427340), new ax(this));
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
    new ay(this).start();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */