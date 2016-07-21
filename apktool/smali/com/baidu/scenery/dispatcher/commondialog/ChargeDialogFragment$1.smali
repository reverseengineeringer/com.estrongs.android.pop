.class Lcom/baidu/scenery/dispatcher/commondialog/ChargeDialogFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/baidu/scenery/dispatcher/commondialog/ChargeDialogFragment;


# direct methods
.method constructor <init>(Lcom/baidu/scenery/dispatcher/commondialog/ChargeDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/scenery/dispatcher/commondialog/ChargeDialogFragment$1;->this$0:Lcom/baidu/scenery/dispatcher/commondialog/ChargeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/commondialog/ChargeDialogFragment$1;->this$0:Lcom/baidu/scenery/dispatcher/commondialog/ChargeDialogFragment;

    invoke-virtual {v0}, Lcom/baidu/scenery/dispatcher/commondialog/ChargeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/commondialog/ChargeDialogFragment$1;->this$0:Lcom/baidu/scenery/dispatcher/commondialog/ChargeDialogFragment;

    invoke-virtual {v0}, Lcom/baidu/scenery/dispatcher/commondialog/ChargeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "duscenery_sdk_close"

    const-string v2, "scenery_charge_dialog"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/scenery/utils/ReportHelper;->reportEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method
