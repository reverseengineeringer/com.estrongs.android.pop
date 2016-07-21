.class public Lcom/estrongs/android/pop/app/ESUsePromptActivity;
.super Lcom/estrongs/android/pop/esclasses/ESResourceActivity;


# instance fields
.field a:Lcom/estrongs/android/j/c;

.field b:Lcom/estrongs/android/ui/dialog/ci;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ESUsePromptActivity;->a:Lcom/estrongs/android/j/c;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ESUsePromptActivity;->b:Lcom/estrongs/android/ui/dialog/ci;

    return-void
.end method

.method private a()Lcom/estrongs/android/ui/dialog/ci;
    .locals 14

    const/4 v5, 0x0

    const-wide/16 v12, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v0, 0x7f0e0076

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0e00c7

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e01ed

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    const v3, 0x7f0e022e

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0e0230

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v7, 0x7f020299

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0e0028

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/View;->setClickable(Z)V

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->k(Ljava/lang/String;)[J

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v8, v0, v1

    const/4 v1, 0x1

    aget-wide v10, v0, v1

    sub-long/2addr v8, v10

    const/4 v1, 0x2

    aget-wide v10, v0, v1

    mul-long/2addr v8, v10

    const/4 v1, 0x0

    aget-wide v10, v0, v1

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    mul-long/2addr v0, v10

    cmp-long v7, v8, v12

    if-ltz v7, :cond_0

    cmp-long v7, v0, v12

    if-gez v7, :cond_2

    :cond_0
    const-string v7, "0"

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "0"

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    cmp-long v3, v8, v12

    if-ltz v3, :cond_1

    cmp-long v3, v0, v12

    if-gez v3, :cond_4

    :cond_1
    const/16 v0, 0x64

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_1
    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->b(Z)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080226

    new-instance v2, Lcom/estrongs/android/pop/app/by;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/by;-><init>(Lcom/estrongs/android/pop/app/ESUsePromptActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    const v1, 0x7f080221

    new-instance v2, Lcom/estrongs/android/pop/app/bz;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/bz;-><init>(Lcom/estrongs/android/pop/app/ESUsePromptActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    new-instance v1, Lcom/estrongs/android/pop/app/ca;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ca;-><init>(Lcom/estrongs/android/pop/app/ESUsePromptActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    const-wide/32 v10, 0x7fffffff

    cmp-long v7, v0, v10

    if-lez v7, :cond_3

    invoke-static {v8, v9}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v5

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-static {v8, v9}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const-wide/32 v10, 0x7fffffff

    cmp-long v3, v0, v10

    if-lez v3, :cond_5

    const-wide/16 v10, 0x2710

    div-long/2addr v8, v10

    long-to-int v3, v8

    const-wide/16 v8, 0x2710

    div-long/2addr v0, v8

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    :cond_5
    long-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    long-to-int v0, v8

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ESUsePromptActivity;->a:Lcom/estrongs/android/j/c;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ESUsePromptActivity;->a()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ESUsePromptActivity;->b:Lcom/estrongs/android/ui/dialog/ci;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESUsePromptActivity;->b:Lcom/estrongs/android/ui/dialog/ci;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESUsePromptActivity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESUsePromptActivity;->b:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onDestroy()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESUsePromptActivity;->b:Lcom/estrongs/android/ui/dialog/ci;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESUsePromptActivity;->b:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESUsePromptActivity;->b:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onResume()V

    return-void
.end method
