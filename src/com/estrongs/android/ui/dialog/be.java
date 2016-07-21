package com.estrongs.android.ui.dialog;

import android.content.Context;
import com.estrongs.fs.impl.adb.c;
import java.util.ArrayList;

public class be
{
  private ci a;
  private Context b;
  
  public be(Context paramContext)
  {
    b = paramContext;
    b();
  }
  
  private void b()
  {
    Object localObject = new ArrayList();
    ((ArrayList)localObject).add("ftp");
    ((ArrayList)localObject).add("sftp");
    ((ArrayList)localObject).add("ftps");
    ((ArrayList)localObject).add("webdav");
    ((ArrayList)localObject).add(b.getString(2131231658));
    if (c.b()) {
      ((ArrayList)localObject).add(b.getString(2131231646));
    }
    localObject = (String[])((ArrayList)localObject).toArray(new String[((ArrayList)localObject).size()]);
    a = new cv(b).a((CharSequence[])localObject, -1, new bf(this)).a(2131230867).d(false).b();
  }
  
  public void a()
  {
    if (a != null) {
      a.show();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */