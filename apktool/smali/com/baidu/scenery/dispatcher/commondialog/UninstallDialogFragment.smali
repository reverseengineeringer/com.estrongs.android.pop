.class public Lcom/baidu/scenery/dispatcher/commondialog/UninstallDialogFragment;
.super Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    sget v0, Lcom/baidu/scenery/R$layout;->scenery_uninstall_dialog:I

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/baidu/scenery/R$id;->dialog_close:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/baidu/scenery/dispatcher/commondialog/UninstallDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/baidu/scenery/dispatcher/commondialog/UninstallDialogFragment$1;-><init>(Lcom/baidu/scenery/dispatcher/commondialog/UninstallDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/baidu/scenery/R$id;->jump_to_google_play:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/baidu/scenery/dispatcher/commondialog/UninstallDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/baidu/scenery/dispatcher/commondialog/UninstallDialogFragment$2;-><init>(Lcom/baidu/scenery/dispatcher/commondialog/UninstallDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/baidu/scenery/R$id;->dialog_content:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/commondialog/UninstallDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "scenery_extra_uninstall_appname"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/baidu/scenery/R$string;->scenery_uninstall_dialog_content:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/baidu/scenery/dispatcher/commondialog/UninstallDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-object v1
.end method
