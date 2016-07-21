package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ap;

class ln
  implements DialogInterface.OnClickListener
{
  ln(ShowDialogActivity paramShowDialogActivity, String paramString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent(b, FileExplorerActivity.class);
    localIntent.addFlags(603979776);
    localIntent.setData(Uri.parse(Uri.encode(ap.bB(a), "/")));
    b.startActivity(localIntent);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ln
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */