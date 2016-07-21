.class public Lcom/estrongs/android/ui/dialog/f;
.super Lcom/estrongs/android/ui/dialog/ci;


# instance fields
.field a:Lcom/estrongs/android/ui/dialog/di;

.field b:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/ci;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/f;->a:Lcom/estrongs/android/ui/dialog/di;

    new-instance v0, Lcom/estrongs/android/ui/dialog/di;

    invoke-direct {v0, p1, p0}, Lcom/estrongs/android/ui/dialog/di;-><init>(Landroid/app/Activity;Landroid/app/Dialog;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/f;->a:Lcom/estrongs/android/ui/dialog/di;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/f;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/f;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/f;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/f;->a:Lcom/estrongs/android/ui/dialog/di;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/di;->b()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/f;->setContentView(Landroid/view/View;)V

    const v0, 0x7f080226

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/g;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/g;-><init>(Lcom/estrongs/android/ui/dialog/f;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/f;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/f;->b:Landroid/widget/Button;

    const v0, 0x7f080221

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/h;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/h;-><init>(Lcom/estrongs/android/ui/dialog/f;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/f;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/f;->requestInputMethod()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/dialog/i;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/f;->a:Lcom/estrongs/android/ui/dialog/di;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/di;->a(Lcom/estrongs/android/ui/dialog/i;)V

    return-void
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    return-void
.end method
