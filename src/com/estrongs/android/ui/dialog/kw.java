package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.net.NetworkInfo.DetailedState;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.text.format.Formatter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;
import com.estrongs.android.e.h;
import com.estrongs.android.e.j;
import com.estrongs.android.e.m;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.theme.al;
import java.util.BitSet;

public class kw
  extends cg
  implements TextWatcher, View.OnClickListener, AdapterView.OnItemSelectedListener
{
  private final j a;
  private View b;
  private int c;
  private TextView d;
  private h e;
  private Button f = null;
  private al g = al.a(mContext);
  
  public kw(Context paramContext, h paramh, j paramj)
  {
    super(paramContext);
    e = paramh;
    a = paramj;
    c = paramj.c();
  }
  
  private WifiConfiguration a()
  {
    WifiConfiguration localWifiConfiguration = new WifiConfiguration();
    SSID = j.a(a.a());
    switch (c)
    {
    case 1: 
    default: 
      localObject = null;
    }
    do
    {
      return (WifiConfiguration)localObject;
      allowedKeyManagement.set(0);
      return localWifiConfiguration;
      allowedKeyManagement.set(1);
      localObject = localWifiConfiguration;
    } while (d.length() == 0);
    Object localObject = d.getText().toString();
    if (((String)localObject).matches("[0-9A-Fa-f]{64}"))
    {
      preSharedKey = ((String)localObject);
      return localWifiConfiguration;
    }
    preSharedKey = ('"' + (String)localObject + '"');
    return localWifiConfiguration;
  }
  
  private void a(ViewGroup paramViewGroup, int paramInt, String paramString)
  {
    View localView = g.a(mContext).inflate(2130903269, paramViewGroup, false);
    ((TextView)localView.findViewById(2131361808)).setText(paramInt);
    ((TextView)localView.findViewById(2131362790)).setText(paramString);
    paramViewGroup.addView(localView);
  }
  
  private void b()
  {
    if ((c == 2) && (d.length() < 8))
    {
      f.setEnabled(false);
      return;
    }
    f.setEnabled(true);
  }
  
  private void c()
  {
    if (c == 0) {
      b.findViewById(2131362788).setVisibility(8);
    }
    do
    {
      return;
      b.findViewById(2131362788).setVisibility(0);
    } while (d != null);
    d = ((TextView)b.findViewById(2131362072));
    d.addTextChangedListener(this);
    ((CheckBox)b.findViewById(2131362789)).setOnClickListener(this);
  }
  
  public void afterTextChanged(Editable paramEditable)
  {
    b();
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onClick(View paramView)
  {
    TextView localTextView = d;
    if (((CheckBox)paramView).isChecked()) {}
    for (int i = 144;; i = 128)
    {
      localTextView.setInputType(i | 0x1);
      return;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    b = g.a(mContext).inflate(2130903268, null);
    setContentView(b);
    Context localContext = getContext();
    Object localObject2 = localContext.getResources();
    setTitle(h.a(a.a()));
    Object localObject1 = (ViewGroup)b.findViewById(2131362069);
    NetworkInfo.DetailedState localDetailedState = a.d();
    if (localDetailedState != null) {
      a((ViewGroup)localObject1, 2131427472, m.a(getContext(), localDetailedState));
    }
    a((ViewGroup)localObject1, 2131427476, localObject2.getStringArray(2131165201)[a.c()]);
    int i = a.e();
    if (i != -1) {
      a((ViewGroup)localObject1, 2131427471, localObject2.getStringArray(2131165185)[i]);
    }
    localObject2 = a.f();
    if (localObject2 != null)
    {
      a((ViewGroup)localObject1, 2131427473, ((WifiInfo)localObject2).getLinkSpeed() + "Mbps");
      int j = ((WifiInfo)localObject2).getIpAddress();
      if (j != 0) {
        a((ViewGroup)localObject1, 2131427474, Formatter.formatIpAddress(j));
      }
    }
    if ((localDetailedState != NetworkInfo.DetailedState.CONNECTED) && (i != -1))
    {
      c();
      f = setConfirmButton(localContext.getString(2131427383), new kx(this));
    }
    localObject1 = new ky(this);
    if (f == null) {
      setSingleButton(localContext.getString(2131427340), (DialogInterface.OnClickListener)localObject1);
    }
    for (;;)
    {
      super.onCreate(paramBundle);
      if (f != null) {
        b();
      }
      return;
      setCancelButton(localContext.getString(2131427340), (DialogInterface.OnClickListener)localObject1);
    }
  }
  
  public void onItemSelected(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    c = paramInt;
    c();
    b();
  }
  
  public void onNothingSelected(AdapterView paramAdapterView) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.kw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */