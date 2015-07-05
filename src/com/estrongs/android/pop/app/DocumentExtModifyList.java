package com.estrongs.android.pop.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.dialog.f;
import java.util.ArrayList;
import java.util.List;

public class DocumentExtModifyList
  extends ESActivity
{
  private ap a;
  private TextView b;
  private TextView c;
  private ListView d;
  
  private void a()
  {
    d = ((ListView)findViewById(2131361828));
    ArrayList localArrayList = new ArrayList();
    ad.a(this).g(localArrayList);
    a = new ap(this, this, localArrayList);
    d.setAdapter(a);
    d.setCacheColorHint(0);
    d.setItemsCanFocus(true);
  }
  
  private void b()
  {
    a.a().clear();
    ad.a(this).g(a.a());
    a.notifyDataSetChanged();
  }
  
  public void a(Context paramContext)
  {
    paramContext = new f(this);
    paramContext.a(new an(this));
    paramContext.setOnDismissListener(new ao(this));
    paramContext.show();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903043);
    setTheme(2131492888);
    b = ((TextView)findViewById(2131361825));
    b.setText(2131428466);
    c = ((TextView)findViewById(2131361826));
    c.setText(2131428467);
    setTitle(2131428464);
    paramBundle = (Button)findViewById(2131361827);
    paramBundle.setFocusable(true);
    paramBundle.setOnClickListener(new al(this));
    paramBundle = findViewById(2131361824);
    paramBundle.setFocusable(true);
    paramBundle.setOnClickListener(new am(this));
    a();
  }
  
  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.DocumentExtModifyList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */