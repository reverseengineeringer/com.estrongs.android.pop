package com.estrongs.a;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;

class e
  implements Runnable
{
  e(d paramd, com.estrongs.a.a.d paramd1, a parama) {}
  
  public void run()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(c.a);
    String str;
    if (a.h == 1)
    {
      str = a).a;
      localBuilder.setMessage("File " + str + " exist, how to do?");
      localBuilder.setPositiveButton("Overwrite(notApply)", new f(this));
      localBuilder.setNegativeButton("Skip(apply)", new g(this));
      localBuilder.setNeutralButton("EndTask", new h(this));
    }
    for (;;)
    {
      localBuilder.create().show();
      return;
      if (a.h == 3)
      {
        str = a).a;
        localBuilder.setMessage("File " + str + " copy failed, how to do?");
        localBuilder.setPositiveButton("Skip", new i(this));
        localBuilder.setNegativeButton("End task", new j(this));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */