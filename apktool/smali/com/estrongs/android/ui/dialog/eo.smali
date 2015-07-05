.class public Lcom/estrongs/android/ui/dialog/eo;
.super Lcom/estrongs/android/ui/dialog/cg;


# instance fields
.field a:Lcom/estrongs/android/ui/dialog/ek;

.field b:Landroid/widget/Button;

.field c:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/eo;->a:Lcom/estrongs/android/ui/dialog/ek;

    iput-boolean v2, p0, Lcom/estrongs/android/ui/dialog/eo;->c:Z

    new-instance v0, Lcom/estrongs/android/ui/dialog/ek;

    invoke-direct {v0, p1, p0, p3}, Lcom/estrongs/android/ui/dialog/ek;-><init>(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/eo;->a:Lcom/estrongs/android/ui/dialog/ek;

    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/dialog/eo;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/eo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/eo;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/eo;->a:Lcom/estrongs/android/ui/dialog/ek;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/ek;->b()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/eo;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0b000b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/ep;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/ep;-><init>(Lcom/estrongs/android/ui/dialog/eo;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/eo;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/eo;->b:Landroid/widget/Button;

    const v0, 0x7f0b000c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/eq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/eq;-><init>(Lcom/estrongs/android/ui/dialog/eo;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/eo;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/eo;->requestInputMethod()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/dialog/er;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eo;->a:Lcom/estrongs/android/ui/dialog/ek;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/ek;->a(Lcom/estrongs/android/ui/dialog/er;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/dialog/eo;->c:Z

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eo;->a:Lcom/estrongs/android/ui/dialog/ek;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/ek;->a(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eo;->a:Lcom/estrongs/android/ui/dialog/ek;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/ek;->b(Z)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eo;->a:Lcom/estrongs/android/ui/dialog/ek;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ek;->c()V

    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    return-void
.end method
