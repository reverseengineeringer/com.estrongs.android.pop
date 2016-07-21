.class public abstract Lcom/flurry/sdk/et;
.super Ljava/lang/Object;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Lcom/flurry/sdk/et$a;

.field private f:J

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Landroid/app/ProgressDialog;

.field private j:Lcom/flurry/sdk/el;

.field private final k:Lcom/flurry/sdk/kb;
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

    const-class v0, Lcom/flurry/sdk/et;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/et;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/et$a;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/flurry/sdk/et;->f:J

    iput-object v2, p0, Lcom/flurry/sdk/et;->g:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/et;->h:I

    iput-object v2, p0, Lcom/flurry/sdk/et;->i:Landroid/app/ProgressDialog;

    iput-object v2, p0, Lcom/flurry/sdk/et;->j:Lcom/flurry/sdk/el;

    new-instance v0, Lcom/flurry/sdk/et$6;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/et$6;-><init>(Lcom/flurry/sdk/et;)V

    iput-object v0, p0, Lcom/flurry/sdk/et;->k:Lcom/flurry/sdk/kb;

    iput-object p1, p0, Lcom/flurry/sdk/et;->d:Lcom/flurry/sdk/et$a;

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/et;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/et;->i:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/et;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/et;->b(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/et;->g:Ljava/lang/String;

    new-instance v1, Lcom/flurry/sdk/et$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/et$2;-><init>(Lcom/flurry/sdk/et;)V

    invoke-static {v0, p1, v1}, Lcom/flurry/sdk/ep;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/eq$a;)Lcom/flurry/sdk/eq;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/et;->j:Lcom/flurry/sdk/el;

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/et;)J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/et;->f:J

    return-wide v0
.end method

.method private b()V
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/et;->g()V

    iget-object v0, p0, Lcom/flurry/sdk/et;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/et;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/et;->i:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/flurry/sdk/et;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/flurry/sdk/et;->i:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/et;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/flurry/sdk/et;->f()V

    iget-object v0, p0, Lcom/flurry/sdk/et;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/et;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/et;->a(Ljava/util/Map;)V

    return-void
.end method

.method private b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/et;->g:Ljava/lang/String;

    new-instance v1, Lcom/flurry/sdk/et$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/et$3;-><init>(Lcom/flurry/sdk/et;)V

    invoke-static {v0, p1, v1}, Lcom/flurry/sdk/ep;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/ek$a;)Lcom/flurry/sdk/ek;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/et;->j:Lcom/flurry/sdk/el;

    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/et;)I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/et;->h:I

    return v0
.end method

.method static synthetic d(Lcom/flurry/sdk/et;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/et;->b()V

    return-void
.end method

.method static synthetic e(Lcom/flurry/sdk/et;)Lcom/flurry/sdk/el;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/et;->j:Lcom/flurry/sdk/el;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/et;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/et;->h:I

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/flurry/sdk/et;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/et$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/et$1;-><init>(Lcom/flurry/sdk/et;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Lcom/flurry/sdk/ed;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/et$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/et$4;-><init>(Lcom/flurry/sdk/et;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/flurry/sdk/et;->h:I

    invoke-static {p1, v0, p2}, Lcom/flurry/sdk/ec;->a(Lcom/flurry/sdk/ed;ILjava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/Long;)V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/et$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/et$5;-><init>(Lcom/flurry/sdk/et;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/flurry/sdk/et;->h:I

    invoke-static {v0, p1}, Lcom/flurry/sdk/ec;->a(ILjava/lang/Long;)V

    return-void
.end method

.method protected a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/et;->a:Ljava/lang/String;

    return-void
.end method

.method public d()Lcom/flurry/sdk/et$a;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/et;->d:Lcom/flurry/sdk/et$a;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/et;->g:Ljava/lang/String;

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/et;->h:I

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/et;->b:Ljava/lang/String;

    return-void
.end method

.method public f()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/et;->f:J

    invoke-static {}, Lcom/flurry/sdk/lo;->a()Lcom/flurry/sdk/lo;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/et;->k:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lo;->a(Lcom/flurry/sdk/kb;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/et;->c:Ljava/lang/String;

    return-void
.end method

.method public g()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/flurry/sdk/et;->f:J

    invoke-static {}, Lcom/flurry/sdk/lo;->a()Lcom/flurry/sdk/lo;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/et;->k:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lo;->b(Lcom/flurry/sdk/kb;)V

    return-void
.end method
