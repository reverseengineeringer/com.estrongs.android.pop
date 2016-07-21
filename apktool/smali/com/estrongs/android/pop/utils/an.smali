.class public Lcom/estrongs/android/pop/utils/an;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/at;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0d015c

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v0

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v1

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0xc000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x700

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, v3}, Lcom/estrongs/android/pop/utils/an;->a(Landroid/app/Activity;Z)V

    new-instance v1, Lcom/estrongs/android/pop/esclasses/u;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/esclasses/u;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v3}, Lcom/estrongs/android/pop/esclasses/u;->a(Z)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/esclasses/u;->a(I)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/at;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0xc000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x700

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, v2}, Lcom/estrongs/android/pop/utils/an;->a(Landroid/app/Activity;Z)V

    new-instance v0, Lcom/estrongs/android/pop/esclasses/u;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/esclasses/u;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/esclasses/u;->a(Z)V

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/esclasses/u;->a(I)V

    goto :goto_0
.end method

.method private static a(Landroid/app/Activity;Z)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_0

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x4000001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method
