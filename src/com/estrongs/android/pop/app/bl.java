package com.estrongs.android.pop.app;

import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import com.estrongs.android.pop.utils.a;
import com.estrongs.android.ui.view.ag;

class bl
  implements DialogInterface.OnClickListener
{
  bl(ESFileSharingActivity paramESFileSharingActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (paramInt == 0)
    {
      paramDialogInterface.dismiss();
      ESFileSharingActivity.b(a);
    }
    do
    {
      return;
      if (a.getIntent().getAction().equals("android.intent.action.SEND_MULTIPLE"))
      {
        a.a(a, a.getString(2131428610));
        return;
      }
    } while (!a.getIntent().getAction().equals("android.intent.action.SEND"));
    Object localObject = (Uri)a.getIntent().getParcelableExtra("android.intent.extra.STREAM");
    if (localObject == null)
    {
      ag.a(a, 2131428093, 1);
      a.finish();
      return;
    }
    paramDialogInterface = ((Uri)localObject).getPath();
    if (((Uri)localObject).getScheme().startsWith("content"))
    {
      paramDialogInterface = ((Uri)localObject).getHost();
      if ((!paramDialogInterface.equals("media")) && (!"com.estrongs.files".equals(paramDialogInterface)))
      {
        ag.a(a, 2131428093, 1);
        a.finish();
        return;
      }
      localObject = a.getContentResolver().query((Uri)localObject, new String[] { "_data" }, null, null, null);
      if ((localObject == null) || (((Cursor)localObject).getCount() <= 0))
      {
        if (localObject != null) {
          ((Cursor)localObject).close();
        }
        ag.a(a, 2131428093, 1);
        a.finish();
        return;
      }
      ((Cursor)localObject).moveToNext();
      paramDialogInterface = ((Cursor)localObject).getString(((Cursor)localObject).getColumnIndexOrThrow("_data"));
      ((Cursor)localObject).close();
    }
    a.a(a, paramDialogInterface);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */