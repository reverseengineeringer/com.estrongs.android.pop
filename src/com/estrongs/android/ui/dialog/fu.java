package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.estrongs.android.ui.adapter.d;
import com.estrongs.android.ui.view.CreateOAuthServiceProvider;

class fu
  implements AdapterView.OnItemClickListener
{
  fu(ft paramft) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (d)paramAdapterView.getAdapter();
    paramAdapterView.a(paramInt);
    paramAdapterView.b(paramInt);
    paramAdapterView = paramAdapterView.c(paramInt);
    paramView = new Intent(a.mContext, CreateOAuthServiceProvider.class);
    paramView.putExtra("nettype", paramAdapterView);
    a.mContext.startActivity(paramView);
    a.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.fu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */