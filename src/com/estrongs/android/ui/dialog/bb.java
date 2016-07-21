package com.estrongs.android.ui.dialog;

import android.content.Context;

public class bb
{
  private ci a;
  private Context b;
  
  public bb(Context paramContext)
  {
    b = paramContext;
    c();
  }
  
  private void c()
  {
    cv localcv = new cv(b);
    bc localbc = new bc(this);
    a = localcv.a(new String[] { "ftp", "sftp", "ftps", "webdav" }, -1, localbc).a(2131230867).d(false).b();
  }
  
  public boolean a()
  {
    return (a != null) && (a.isShowing());
  }
  
  public void b()
  {
    if (a != null) {
      a.show();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.bb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */