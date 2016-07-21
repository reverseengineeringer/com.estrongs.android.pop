.class public Lcom/estrongs/android/ui/dialog/er;
.super Lcom/estrongs/android/ui/dialog/ci;


# instance fields
.field a:Lcom/estrongs/android/ui/dialog/en;

.field b:Landroid/widget/Button;

.field c:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/ci;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/er;->a:Lcom/estrongs/android/ui/dialog/en;

    iput-boolean v5, p0, Lcom/estrongs/android/ui/dialog/er;->c:Z

    new-instance v0, Lcom/estrongs/android/ui/dialog/en;

    invoke-direct {v0, p1, p0, p3}, Lcom/estrongs/android/ui/dialog/en;-><init>(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/er;->a:Lcom/estrongs/android/ui/dialog/en;

    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/dialog/er;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/er;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/er;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    div-int/lit8 v3, v1, 0x2

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/er;->a:Lcom/estrongs/android/ui/dialog/en;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/en;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/er;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/er;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    invoke-virtual {v2, v1, v5, v1, v5}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->setPadding(IIII)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/er;->setContentView(Landroid/view/View;)V

    const v0, 0x7f080226

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/es;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/es;-><init>(Lcom/estrongs/android/ui/dialog/er;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/er;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/er;->b:Landroid/widget/Button;

    const v0, 0x7f080221

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/et;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/et;-><init>(Lcom/estrongs/android/ui/dialog/er;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/er;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/er;->requestInputMethod()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/dialog/eu;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/er;->a:Lcom/estrongs/android/ui/dialog/en;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/en;->a(Lcom/estrongs/android/ui/dialog/eu;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/dialog/er;->c:Z

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/er;->a:Lcom/estrongs/android/ui/dialog/en;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/en;->a(Z)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/er;->a:Lcom/estrongs/android/ui/dialog/en;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/en;->c()V

    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    return-void
.end method
