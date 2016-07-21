.class public Lcom/estrongs/android/ui/dialog/o;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/estrongs/fs/impl/b/d;

.field private b:Lcom/estrongs/android/ui/dialog/u;

.field private c:Landroid/app/Activity;

.field private d:Lcom/estrongs/android/ui/dialog/ci;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/impl/b/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/o;->b:Lcom/estrongs/android/ui/dialog/u;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/o;->a:Lcom/estrongs/fs/impl/b/d;

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/o;->c:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/o;->a:Lcom/estrongs/fs/impl/b/d;

    new-instance v0, Lcom/estrongs/android/ui/dialog/u;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/ui/dialog/u;-><init>(Lcom/estrongs/android/ui/dialog/o;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/o;->b:Lcom/estrongs/android/ui/dialog/u;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/o;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/o;->c:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/o;->b:Lcom/estrongs/android/ui/dialog/u;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/u;->aE()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0805db

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/cv;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/o;->a:Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0804c5

    new-instance v2, Lcom/estrongs/android/ui/dialog/p;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/p;-><init>(Lcom/estrongs/android/ui/dialog/o;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/dialog/cv;->f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/o;->a:Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/d;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0800b3

    new-instance v2, Lcom/estrongs/android/ui/dialog/r;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/r;-><init>(Lcom/estrongs/android/ui/dialog/o;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/dialog/cv;->e(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    :goto_1
    const v0, 0x7f080221

    new-instance v2, Lcom/estrongs/android/ui/dialog/t;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/t;-><init>(Lcom/estrongs/android/ui/dialog/o;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/dialog/cv;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/o;->d:Lcom/estrongs/android/ui/dialog/ci;

    return-void

    :cond_0
    const v0, 0x7f080094

    new-instance v2, Lcom/estrongs/android/ui/dialog/q;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/q;-><init>(Lcom/estrongs/android/ui/dialog/o;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/dialog/cv;->f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    goto :goto_0

    :cond_1
    const v0, 0x7f08008e

    new-instance v2, Lcom/estrongs/android/ui/dialog/s;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/s;-><init>(Lcom/estrongs/android/ui/dialog/o;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/dialog/cv;->e(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    goto :goto_1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/o;->d:Lcom/estrongs/android/ui/dialog/ci;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/o;->d:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    :cond_0
    return-void
.end method
