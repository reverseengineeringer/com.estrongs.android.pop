package com.estrongs.android.ui.dialog;

import android.content.Context;
import com.estrongs.fs.impl.adb.c;
import java.util.ArrayList;

public class bc
{
  private cg a;
  private Context b;
  
  public bc(Context paramContext)
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
    ((ArrayList)localObject).add(b.getString(2131427410));
    ((ArrayList)localObject).add(b.getString(2131427412));
    if (c.b()) {
      ((ArrayList)localObject).add(b.getString(2131428722));
    }
    localObject = (String[])((ArrayList)localObject).toArray(new String[((ArrayList)localObject).size()]);
    a = new ct(b).a((CharSequence[])localObject, -1, new bd(this)).a(2131427361).d(false).b();
  }
  
  public void a()
  {
    if (a != null) {
      a.show();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */