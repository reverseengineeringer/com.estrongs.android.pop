.class public Lcom/baidu/scenery/dispatcher/commondialog/ChargeDialogFragment;
.super Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    sget v0, Lcom/baidu/scenery/R$layout;->scenery_charge_dialog:I

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/baidu/scenery/R$id;->dialog_close:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v2, Lcom/baidu/scenery/dispatcher/commondialog/ChargeDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/baidu/scenery/dispatcher/commondialog/ChargeDialogFragment$1;-><init>(Lcom/baidu/scenery/dispatcher/commondialog/ChargeDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/baidu/scenery/R$id;->jump_to_google_play:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/baidu/scenery/dispatcher/commondialog/ChargeDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/baidu/scenery/dispatcher/commondialog/ChargeDialogFragment$2;-><init>(Lcom/baidu/scenery/dispatcher/commondialog/ChargeDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/baidu/scenery/R$id;->dialog_content:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/commondialog/ChargeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "scenery_charge_extra_minutes"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    sget v3, Lcom/baidu/scenery/R$string;->scenery_charge_dialog_content:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/baidu/scenery/dispatcher/commondialog/ChargeDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-object v1
.end method
