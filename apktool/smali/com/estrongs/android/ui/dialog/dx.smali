.class public Lcom/estrongs/android/ui/dialog/dx;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/dialog/ee;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/dx;->a:Lcom/estrongs/android/ui/dialog/ee;

    new-instance v0, Lcom/estrongs/android/ui/dialog/ee;

    invoke-direct {v0, p1, p2, p3}, Lcom/estrongs/android/ui/dialog/ee;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/dx;->a:Lcom/estrongs/android/ui/dialog/ee;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/dx;)Lcom/estrongs/android/ui/dialog/ee;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dx;->a:Lcom/estrongs/android/ui/dialog/ee;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    const v3, 0x7f080221

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dx;->a:Lcom/estrongs/android/ui/dialog/ee;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ee;->aE()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0805db

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/cv;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dx;->a:Lcom/estrongs/android/ui/dialog/ee;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ee;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->cg(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/dialog/dy;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/dy;-><init>(Lcom/estrongs/android/ui/dialog/dx;)V

    invoke-virtual {v1, v3, v0}, Lcom/estrongs/android/ui/dialog/cv;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    :goto_0
    new-instance v0, Lcom/estrongs/android/ui/dialog/ed;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ed;-><init>(Lcom/estrongs/android/ui/dialog/dx;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/dx;->a:Lcom/estrongs/android/ui/dialog/ee;

    iput-object v0, v1, Lcom/estrongs/android/ui/dialog/ee;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dx;->a:Lcom/estrongs/android/ui/dialog/ee;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ee;->c()V

    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/dialog/dz;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/dz;-><init>(Lcom/estrongs/android/ui/dialog/dx;)V

    invoke-virtual {v1, v3, v0}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    const v0, 0x7f0800a2

    new-instance v2, Lcom/estrongs/android/ui/dialog/ea;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/ea;-><init>(Lcom/estrongs/android/ui/dialog/dx;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    goto :goto_0
.end method
