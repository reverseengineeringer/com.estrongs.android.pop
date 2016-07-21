.class public Lcom/estrongs/android/ui/b/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/b/q;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/d;->a:Lcom/estrongs/android/ui/b/q;

    new-instance v0, Lcom/estrongs/android/ui/b/q;

    invoke-direct {v0, p1, p2}, Lcom/estrongs/android/ui/b/q;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/h;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/d;->a:Lcom/estrongs/android/ui/b/q;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/d;->a:Lcom/estrongs/android/ui/b/q;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/q;->aE()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0805db

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/cv;

    const v0, 0x7f080221

    new-instance v2, Lcom/estrongs/android/ui/b/e;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/b/e;-><init>(Lcom/estrongs/android/ui/b/d;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/dialog/cv;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/d;->a:Lcom/estrongs/android/ui/b/q;

    iput-object v0, v1, Lcom/estrongs/android/ui/b/q;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    return-void
.end method
