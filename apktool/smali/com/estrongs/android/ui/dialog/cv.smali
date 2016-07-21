.class public Lcom/estrongs/android/ui/dialog/cv;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/estrongs/android/ui/dialog/ci;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/cv;->b:Landroid/content/Context;

    new-instance v0, Lcom/estrongs/android/ui/dialog/ci;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/cv;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/estrongs/android/ui/dialog/cv;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/ci;->setTitle(I)V

    return-object p0
.end method

.method public a(IILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/estrongs/android/ui/dialog/cv;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/ui/dialog/ci;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/estrongs/android/ui/dialog/cv;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/ci;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/dialog/cv;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/ci;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/estrongs/android/ui/dialog/cv;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/ci;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p0
.end method

.method public a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/cv;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/ci;->setContentView(Landroid/view/View;)V

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/ci;->setTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/dialog/ci;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public a(Z)Lcom/estrongs/android/ui/dialog/cv;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/ci;->setItemsEnable(Z)V

    return-object p0
.end method

.method public a([Landroid/graphics/drawable/Drawable;[Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/estrongs/android/ui/dialog/ci;->setItems([Landroid/graphics/drawable/Drawable;[Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, p1, p2, p3}, Lcom/estrongs/android/ui/dialog/ci;->setItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->requestInputMethod()V

    return-void
.end method

.method public b()Lcom/estrongs/android/ui/dialog/ci;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    return-object v0
.end method

.method public b(I)Lcom/estrongs/android/ui/dialog/cv;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/ci;->setMessage(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/ui/dialog/ci;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/ci;->setMessage(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/dialog/ci;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-object p0
.end method

.method public b(Z)Lcom/estrongs/android/ui/dialog/cv;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/ci;->setCancelable(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setCanceledOnTouchOutside(Z)V

    :cond_0
    return-object p0
.end method

.method public c()Lcom/estrongs/android/ui/dialog/ci;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    return-object v0
.end method

.method public c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/ui/dialog/ci;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/dialog/ci;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-object p0
.end method

.method public c(Z)Lcom/estrongs/android/ui/dialog/cv;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/ci;->setCanceledOnTouchOutside(Z)V

    return-object p0
.end method

.method public d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/ui/dialog/ci;->setLeftButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-object p0
.end method

.method public d(Z)Lcom/estrongs/android/ui/dialog/cv;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/ci;->setSelectable(Z)V

    return-object p0
.end method

.method public e(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/ui/dialog/ci;->setMiddleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-object p0
.end method

.method public f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cv;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/cv;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/ui/dialog/ci;->setRightButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-object p0
.end method
