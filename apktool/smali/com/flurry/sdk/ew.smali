.class public Lcom/flurry/sdk/ew;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/app/ProgressDialog;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/Bundle;

.field private e:Lcom/flurry/sdk/hi;

.field private f:Lcom/flurry/sdk/ew$a;

.field private g:J

.field private h:I

.field private final i:Lcom/flurry/sdk/kb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kb",
            "<",
            "Lcom/flurry/sdk/ec;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/flurry/sdk/kb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kb",
            "<",
            "Lcom/flurry/sdk/ln;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/ew;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ew;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/ew;->c:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/flurry/sdk/ew;->d:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/flurry/sdk/ew;->e:Lcom/flurry/sdk/hi;

    sget-object v0, Lcom/flurry/sdk/ew$a;->a:Lcom/flurry/sdk/ew$a;

    iput-object v0, p0, Lcom/flurry/sdk/ew;->f:Lcom/flurry/sdk/ew$a;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/flurry/sdk/ew;->g:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/ew;->h:I

    new-instance v0, Lcom/flurry/sdk/ew$6;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ew$6;-><init>(Lcom/flurry/sdk/ew;)V

    iput-object v0, p0, Lcom/flurry/sdk/ew;->i:Lcom/flurry/sdk/kb;

    new-instance v0, Lcom/flurry/sdk/ew$8;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ew$8;-><init>(Lcom/flurry/sdk/ew;)V

    iput-object v0, p0, Lcom/flurry/sdk/ew;->j:Lcom/flurry/sdk/kb;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/ew;->c:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Lcom/flurry/sdk/ew;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ew;)I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/ew;->h:I

    return v0
.end method

.method private a(Landroid/os/Bundle;)Lcom/flurry/sdk/et;
    .locals 1

    invoke-static {p1}, Lcom/flurry/sdk/eu;->a(Landroid/os/Bundle;)Lcom/flurry/sdk/et;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/ew;Landroid/os/Bundle;)Lcom/flurry/sdk/et;
    .locals 1

    invoke-direct {p0, p1}, Lcom/flurry/sdk/ew;->a(Landroid/os/Bundle;)Lcom/flurry/sdk/et;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/ew;->b:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/flurry/sdk/ew;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/flurry/sdk/ew;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/ew;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/ew;->b:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/flurry/sdk/ew$7;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ew$7;-><init>(Lcom/flurry/sdk/ew;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/ew;->d()V

    return-void
.end method

.method private a(Lcom/flurry/sdk/eg;)V
    .locals 1

    invoke-static {p1}, Lcom/flurry/sdk/dy;->a(Lcom/flurry/sdk/eg;)V

    sget-object v0, Lcom/flurry/sdk/ew$a;->f:Lcom/flurry/sdk/ew$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew$a;)V

    invoke-direct {p0}, Lcom/flurry/sdk/ew;->i()V

    return-void
.end method

.method private a(Lcom/flurry/sdk/eg;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/flurry/sdk/ew;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/ed;->c:Lcom/flurry/sdk/ed;

    iget v1, p0, Lcom/flurry/sdk/ew;->h:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ec;->a(Lcom/flurry/sdk/ed;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/ew;->f:Lcom/flurry/sdk/ew$a;

    sget-object v2, Lcom/flurry/sdk/ew$a;->g:Lcom/flurry/sdk/ew$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/ew$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/flurry/sdk/ew;->a:Ljava/lang/String;

    const-string v1, "Do not show OAuth web view. Activity destroyed."

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/flurry/sdk/ew$a;->d:Lcom/flurry/sdk/ew$a;

    invoke-direct {p0, v1}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew$a;)V

    sget-object v1, Lcom/flurry/sdk/ew;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting auth url."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/ew$2;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/flurry/sdk/ew$2;-><init>(Lcom/flurry/sdk/ew;Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/eg;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Lcom/flurry/sdk/ew$a;)V
    .locals 4

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ew;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changing state from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/ew;->f:Lcom/flurry/sdk/ew$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/flurry/sdk/ew;->f:Lcom/flurry/sdk/ew$a;

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ew;Lcom/flurry/sdk/eg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/eg;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ew;Lcom/flurry/sdk/eg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/eg;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ew;Lcom/flurry/sdk/ew$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew$a;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ew;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/ew;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/ew;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/ed;->c:Lcom/flurry/sdk/ed;

    iget v1, p0, Lcom/flurry/sdk/ew;->h:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ec;->a(Lcom/flurry/sdk/ed;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/ew;->f:Lcom/flurry/sdk/ew$a;

    sget-object v2, Lcom/flurry/sdk/ew$a;->g:Lcom/flurry/sdk/ew$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/ew$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ew;->a:Ljava/lang/String;

    const-string v2, "Do not launch post dialog. Activity destroyed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/ew$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/flurry/sdk/ew$5;-><init>(Lcom/flurry/sdk/ew;Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "com.flurry.android.tumblr_post"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method private b(Lcom/flurry/sdk/eg;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/ew;->f:Lcom/flurry/sdk/ew$a;

    sget-object v1, Lcom/flurry/sdk/ew$a;->g:Lcom/flurry/sdk/ew$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ew$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ew;->a:Ljava/lang/String;

    const-string v2, "Do not show fetch access token. Activity destroyed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/flurry/sdk/ew$a;->e:Lcom/flurry/sdk/ew$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew$a;)V

    invoke-direct {p0}, Lcom/flurry/sdk/ew;->j()V

    new-instance v0, Lcom/flurry/sdk/ew$3;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ew$3;-><init>(Lcom/flurry/sdk/ew;)V

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/ep;->a(Lcom/flurry/sdk/eg;Ljava/lang/String;Lcom/flurry/sdk/eh$a;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/flurry/sdk/ew;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/ew;->k()V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/ew;Lcom/flurry/sdk/eg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/ew;->b(Lcom/flurry/sdk/eg;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/content/Intent;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ew;->d:Landroid/os/Bundle;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/flurry/sdk/ew;)Lcom/flurry/sdk/hi;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ew;->e:Lcom/flurry/sdk/hi;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/ew;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ew;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic e(Lcom/flurry/sdk/ew;)Lcom/flurry/sdk/kb;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ew;->i:Lcom/flurry/sdk/kb;

    return-object v0
.end method

.method static synthetic f(Lcom/flurry/sdk/ew;)J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/ew;->g:J

    return-wide v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/ew;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/flurry/sdk/ew;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ew;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private g()V
    .locals 3

    sget-object v0, Lcom/flurry/sdk/ew$a;->b:Lcom/flurry/sdk/ew$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew$a;)V

    invoke-direct {p0}, Lcom/flurry/sdk/ew;->j()V

    invoke-direct {p0}, Lcom/flurry/sdk/ew;->l()V

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.analytics.tumblr.TumblrEvents"

    iget-object v2, p0, Lcom/flurry/sdk/ew;->i:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kc;->a(Ljava/lang/String;Lcom/flurry/sdk/kb;)V

    invoke-static {}, Lcom/flurry/sdk/dy;->b()Lcom/flurry/sdk/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/eg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/flurry/sdk/ew;->h()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/flurry/sdk/ew$a;->f:Lcom/flurry/sdk/ew$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew$a;)V

    invoke-direct {p0}, Lcom/flurry/sdk/ew;->i()V

    goto :goto_0
.end method

.method private h()V
    .locals 1

    sget-object v0, Lcom/flurry/sdk/ew$a;->c:Lcom/flurry/sdk/ew$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew$a;)V

    new-instance v0, Lcom/flurry/sdk/ew$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ew$1;-><init>(Lcom/flurry/sdk/ew;)V

    invoke-static {v0}, Lcom/flurry/sdk/ep;->a(Lcom/flurry/sdk/en$a;)V

    return-void
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/ew;->f:Lcom/flurry/sdk/ew$a;

    sget-object v1, Lcom/flurry/sdk/ew$a;->g:Lcom/flurry/sdk/ew$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ew$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ew;->a:Ljava/lang/String;

    const-string v2, "Do not get user info. Activity destroyed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/flurry/sdk/ew$4;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ew$4;-><init>(Lcom/flurry/sdk/ew;)V

    invoke-static {v0}, Lcom/flurry/sdk/ep;->a(Lcom/flurry/sdk/er$a;)V

    goto :goto_0
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ew;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private k()V
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/ew;->e()V

    iget-object v0, p0, Lcom/flurry/sdk/ew;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/ew;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/ew;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/ew;->d:Landroid/os/Bundle;

    const-string v1, "com.flurry.android.post_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/ew;->h:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    sget-object v0, Lcom/flurry/sdk/ew$a;->g:Lcom/flurry/sdk/ew$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew$a;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/hi;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/flurry/sdk/ew;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/flurry/sdk/ew;->b(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/ew;->a:Ljava/lang/String;

    const-string v2, "Invalid intent."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/ed;->a:Lcom/flurry/sdk/ed;

    iget v1, p0, Lcom/flurry/sdk/ew;->h:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ec;->a(Lcom/flurry/sdk/ed;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/flurry/sdk/ew;->e:Lcom/flurry/sdk/hi;

    invoke-direct {p0}, Lcom/flurry/sdk/ew;->g()V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    sget-object v0, Lcom/flurry/sdk/ew$a;->g:Lcom/flurry/sdk/ew$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew$a;)V

    iget-object v0, p0, Lcom/flurry/sdk/ew;->e:Lcom/flurry/sdk/hi;

    invoke-interface {v0}, Lcom/flurry/sdk/hi;->a()V

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ew;->a:Ljava/lang/String;

    const-string v2, "Authentication Error. Lets reset the access token."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/ew;->f:Lcom/flurry/sdk/ew$a;

    sget-object v1, Lcom/flurry/sdk/ew$a;->b:Lcom/flurry/sdk/ew$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ew$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/ew;->f:Lcom/flurry/sdk/ew$a;

    sget-object v1, Lcom/flurry/sdk/ew$a;->f:Lcom/flurry/sdk/ew$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ew$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/dy;->a()V

    invoke-direct {p0}, Lcom/flurry/sdk/ew;->h()V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/flurry/sdk/ed;->h:Lcom/flurry/sdk/ed;

    iget v1, p0, Lcom/flurry/sdk/ew;->h:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ec;->a(Lcom/flurry/sdk/ed;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/ew;->g:J

    invoke-static {}, Lcom/flurry/sdk/lo;->a()Lcom/flurry/sdk/lo;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ew;->j:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lo;->a(Lcom/flurry/sdk/kb;)V

    return-void
.end method

.method public e()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/flurry/sdk/ew;->g:J

    invoke-static {}, Lcom/flurry/sdk/lo;->a()Lcom/flurry/sdk/lo;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ew;->j:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lo;->b(Lcom/flurry/sdk/kb;)V

    return-void
.end method
