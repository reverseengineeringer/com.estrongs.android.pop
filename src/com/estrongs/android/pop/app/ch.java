package com.estrongs.android.pop.app;

import android.content.Intent;
import com.estrongs.fs.b.r;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.f;
import java.io.File;

class ch
  implements Runnable
{
  ch(FileChooserActivity paramFileChooserActivity, String paramString, h paramh, Intent paramIntent) {}
  
  public void run()
  {
    String str = com.estrongs.android.pop.a.d;
    Object localObject = new File(str);
    if (!((File)localObject).exists()) {
      ((File)localObject).mkdirs();
    }
    localObject = new r(d.a(d), d.a(d).j(a), new f(new File(str)));
    ((com.estrongs.a.a)localObject).execute(false);
    str = str + "/" + b.getName();
    d.runOnUiThread(new ci(this, (com.estrongs.a.a)localObject, str));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */