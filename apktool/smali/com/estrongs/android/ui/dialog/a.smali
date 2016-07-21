.class public Lcom/estrongs/android/ui/dialog/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/estrongs/fs/impl/adb/a;

.field b:Lcom/estrongs/android/ui/dialog/cv;

.field private c:Lcom/estrongs/android/ui/dialog/e;

.field private d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/impl/adb/a;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/a;->c:Lcom/estrongs/android/ui/dialog/e;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/a;->a:Lcom/estrongs/fs/impl/adb/a;

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/a;->d:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/a;->a:Lcom/estrongs/fs/impl/adb/a;

    new-instance v0, Lcom/estrongs/android/ui/dialog/e;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/a;->d:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/dialog/e;-><init>(Lcom/estrongs/android/ui/dialog/a;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/a;->c:Lcom/estrongs/android/ui/dialog/e;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/a;->c:Lcom/estrongs/android/ui/dialog/e;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/e;->aE()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0805db

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/a;->b:Lcom/estrongs/android/ui/dialog/cv;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/a;->b:Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/cv;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/a;->b:Lcom/estrongs/android/ui/dialog/cv;

    const v1, 0x7f08008d

    new-instance v2, Lcom/estrongs/android/ui/dialog/b;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/b;-><init>(Lcom/estrongs/android/ui/dialog/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/a;->b:Lcom/estrongs/android/ui/dialog/cv;

    const v1, 0x7f0805f7

    new-instance v2, Lcom/estrongs/android/ui/dialog/c;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/c;-><init>(Lcom/estrongs/android/ui/dialog/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->e(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/a;->b:Lcom/estrongs/android/ui/dialog/cv;

    const v1, 0x7f080221

    new-instance v2, Lcom/estrongs/android/ui/dialog/d;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/d;-><init>(Lcom/estrongs/android/ui/dialog/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/a;->d:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/a;->b:Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    return-void
.end method
