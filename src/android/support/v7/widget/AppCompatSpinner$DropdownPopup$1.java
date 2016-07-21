package android.support.v7.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;

class AppCompatSpinner$DropdownPopup$1
  implements AdapterView.OnItemClickListener
{
  AppCompatSpinner$DropdownPopup$1(AppCompatSpinner.DropdownPopup paramDropdownPopup, AppCompatSpinner paramAppCompatSpinner) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this$1.this$0.setSelection(paramInt);
    if (this$1.this$0.getOnItemClickListener() != null) {
      this$1.this$0.performItemClick(paramView, paramInt, AppCompatSpinner.DropdownPopup.access$200(this$1).getItemId(paramInt));
    }
    this$1.dismiss();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.AppCompatSpinner.DropdownPopup.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */