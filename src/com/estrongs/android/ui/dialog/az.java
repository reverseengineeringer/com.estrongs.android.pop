package com.estrongs.android.ui.dialog;

import android.content.Context;

public class az
{
  private cg a;
  private Context b;
  
  public az(Context paramContext)
  {
    b = paramContext;
    c();
  }
  
  private void c()
  {
    ct localct = new ct(b);
    ba localba = new ba(this);
    a = localct.a(new String[] { "ftp", "sftp", "ftps", "webdav" }, -1, localba).a(2131427361).d(false).b();
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
 * Qualified Name:     com.estrongs.android.ui.dialog.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */