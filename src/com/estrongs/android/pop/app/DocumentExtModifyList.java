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
  private at a;
  private TextView b;
  private TextView c;
  private ListView d;
  
  private void a()
  {
    d = ((ListView)findViewById(2131624327));
    ArrayList localArrayList = new ArrayList();
    ad.a(this).g(localArrayList);
    a = new at(this, this, localArrayList);
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
    paramContext.a(new ar(this));
    paramContext.setOnDismissListener(new as(this));
    paramContext.show();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903105);
    setTheme(2131296626);
    b = ((TextView)findViewById(2131624055));
    b.setText(2131230912);
    c = ((TextView)findViewById(2131624325));
    c.setText(2131231377);
    setTitle(2131231375);
    paramBundle = (Button)findViewById(2131624326);
    paramBundle.setFocusable(true);
    paramBundle.setOnClickListener(new ap(this));
    paramBundle = findViewById(2131624324);
    paramBundle.setFocusable(true);
    paramBundle.setOnClickListener(new aq(this));
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