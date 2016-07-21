.class public Lcom/baidu/scenery/dispatcher/commondialog/TakePhotoDialogFragment;
.super Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/baidu/scenery/R$layout;->scenery_take_photo_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/baidu/scenery/R$id;->dialog_close:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/baidu/scenery/dispatcher/commondialog/TakePhotoDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/baidu/scenery/dispatcher/commondialog/TakePhotoDialogFragment$1;-><init>(Lcom/baidu/scenery/dispatcher/commondialog/TakePhotoDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/baidu/scenery/R$id;->jump_to_google_play:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/baidu/scenery/dispatcher/commondialog/TakePhotoDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/baidu/scenery/dispatcher/commondialog/TakePhotoDialogFragment$2;-><init>(Lcom/baidu/scenery/dispatcher/commondialog/TakePhotoDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/baidu/scenery/R$id;->dialog_content:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;

    sget v2, Lcom/baidu/scenery/R$string;->scenery_take_photo_dialog_content:I

    invoke-virtual {p0, v2}, Lcom/baidu/scenery/dispatcher/commondialog/TakePhotoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-object v1
.end method
