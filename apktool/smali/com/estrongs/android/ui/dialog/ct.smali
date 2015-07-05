.class public Lcom/estrongs/android/ui/dialog/ct;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/dialog/cg;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ct;->b:Landroid/content/Context;

    new-instance v0, Lcom/estrongs/android/ui/dialog/cg;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ct;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/estrongs/android/ui/dialog/ct;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/cg;->setTitle(I)V

    return-object p0
.end method

.method public a(IILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/estrongs/android/ui/dialog/ct;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/ui/dialog/cg;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/estrongs/android/ui/dialog/ct;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/cg;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/dialog/ct;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/cg;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/estrongs/android/ui/dialog/ct;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/cg;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p0
.end method

.method public a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/cg;->setContentView(Landroid/view/View;)V

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/ct;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/cg;->setTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/dialog/cg;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public a(Z)Lcom/estrongs/android/ui/dialog/ct;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/cg;->setItemsEnable(Z)V

    return-object p0
.end method

.method public a([Landroid/graphics/drawable/Drawable;[Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/estrongs/android/ui/dialog/cg;->setItems([Landroid/graphics/drawable/Drawable;[Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0, p1, p2, p3}, Lcom/estrongs/android/ui/dialog/cg;->setItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->requestInputMethod()V

    return-void
.end method

.method public b()Lcom/estrongs/android/ui/dialog/cg;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    return-object v0
.end method

.method public b(I)Lcom/estrongs/android/ui/dialog/ct;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/cg;->setMessage(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/ui/dialog/cg;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/ct;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/cg;->setMessage(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/dialog/cg;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-object p0
.end method

.method public b(Z)Lcom/estrongs/android/ui/dialog/ct;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/cg;->setCancelable(Z)V

    return-object p0
.end method

.method public c()Lcom/estrongs/android/ui/dialog/cg;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    return-object v0
.end method

.method public c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/ui/dialog/cg;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/dialog/cg;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-object p0
.end method

.method public c(Z)Lcom/estrongs/android/ui/dialog/ct;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/cg;->setCanceledOnTouchOutside(Z)V

    return-object p0
.end method

.method public d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/ui/dialog/cg;->setLeftButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-object p0
.end method

.method public d(Z)Lcom/estrongs/android/ui/dialog/ct;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/cg;->setSelectable(Z)V

    return-object p0
.end method

.method public e(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/ui/dialog/cg;->setMiddleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-object p0
.end method

.method public f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ct;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ct;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/ui/dialog/cg;->setRightButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-object p0
.end method
