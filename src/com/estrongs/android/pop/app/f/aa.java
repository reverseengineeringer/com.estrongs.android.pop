package com.estrongs.android.pop.app.f;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;

class aa
  implements DialogInterface.OnClickListener
{
  aa(y paramy) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = new Bundle();
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("searchPath").append("=").append(y.a(a));
    ((StringBuilder)localObject).toString();
    if (ba).a > 0L) {
      ((StringBuilder)localObject).append("&&").append("minSize").append("=").append(ba).a);
    }
    if (ba).b > 0L) {
      ((StringBuilder)localObject).append("&&").append("maxSize").append("=").append(ba).b);
    }
    if (ca).a > 0L) {
      ((StringBuilder)localObject).append("&&").append("minDate").append("=").append(ca).a);
    }
    if (ca).b > 0L) {
      ((StringBuilder)localObject).append("&&").append("maxDate").append("=").append(ca).b);
    }
    ((StringBuilder)localObject).append("&&").append("recursion").append("=").append("true");
    paramDialogInterface.putString("SEARCH_PATTERN", ((StringBuilder)localObject).toString());
    localObject = new Intent();
    ((Intent)localObject).putExtras(paramDialogInterface);
    ((Intent)localObject).putExtras((Intent)localObject);
    ((Intent)localObject).putExtra("SEARCH_TABID", y.d(a).getExtras().getInt("SEARCH_TABID"));
    a.a((Intent)localObject);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.f.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */