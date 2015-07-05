.class public Lcom/estrongs/android/ui/dialog/du;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/dialog/eb;


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

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/du;->a:Lcom/estrongs/android/ui/dialog/eb;

    new-instance v0, Lcom/estrongs/android/ui/dialog/eb;

    invoke-direct {v0, p1, p2, p3}, Lcom/estrongs/android/ui/dialog/eb;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/du;->a:Lcom/estrongs/android/ui/dialog/eb;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/du;)Lcom/estrongs/android/ui/dialog/eb;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/du;->a:Lcom/estrongs/android/ui/dialog/eb;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    const v3, 0x7f0b000c

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/du;->a:Lcom/estrongs/android/ui/dialog/eb;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/eb;->aq()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00f9

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/du;->a:Lcom/estrongs/android/ui/dialog/eb;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/eb;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/dialog/dv;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/dv;-><init>(Lcom/estrongs/android/ui/dialog/du;)V

    invoke-virtual {v1, v3, v0}, Lcom/estrongs/android/ui/dialog/ct;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    :goto_0
    new-instance v0, Lcom/estrongs/android/ui/dialog/ea;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ea;-><init>(Lcom/estrongs/android/ui/dialog/du;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/du;->a:Lcom/estrongs/android/ui/dialog/eb;

    iput-object v0, v1, Lcom/estrongs/android/ui/dialog/eb;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/du;->a:Lcom/estrongs/android/ui/dialog/eb;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/eb;->c()V

    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/dialog/dw;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/dw;-><init>(Lcom/estrongs/android/ui/dialog/du;)V

    invoke-virtual {v1, v3, v0}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    const v0, 0x7f0b0034

    new-instance v2, Lcom/estrongs/android/ui/dialog/dx;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/dx;-><init>(Lcom/estrongs/android/ui/dialog/du;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    goto :goto_0
.end method
