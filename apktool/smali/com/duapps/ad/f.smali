.class public Lcom/duapps/ad/f;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/duapps/ad/a;

.field private b:Landroid/content/Context;

.field private c:Lcom/duapps/ad/c;

.field private d:Lcom/duapps/ad/e;

.field private e:I

.field private f:Landroid/view/View;

.field private g:Landroid/os/Handler;

.field private h:Lcom/duapps/ad/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/duapps/ad/f;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/duapps/ad/g;

    invoke-direct {v0, p0}, Lcom/duapps/ad/g;-><init>(Lcom/duapps/ad/f;)V

    iput-object v0, p0, Lcom/duapps/ad/f;->h:Lcom/duapps/ad/d;

    iput-object p1, p0, Lcom/duapps/ad/f;->b:Landroid/content/Context;

    iput p2, p0, Lcom/duapps/ad/f;->e:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/k;->a(Landroid/content/Context;)Lcom/duapps/ad/k;

    move-result-object v0

    iget v1, p0, Lcom/duapps/ad/f;->e:I

    invoke-virtual {v0, v1, p3}, Lcom/duapps/ad/k;->a(II)Lcom/duapps/ad/j;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/a;

    iput-object v0, p0, Lcom/duapps/ad/f;->a:Lcom/duapps/ad/a;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/duapps/ad/f;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/f;Lcom/duapps/ad/c;)Lcom/duapps/ad/c;
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/c;

    return-object p1
.end method

.method static synthetic a(Lcom/duapps/ad/f;)Lcom/duapps/ad/e;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/f;->d:Lcom/duapps/ad/e;

    return-object v0
.end method

.method static synthetic b(Lcom/duapps/ad/f;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/f;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/r;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/f;->h:Lcom/duapps/ad/d;

    sget-object v1, Lcom/duapps/ad/b;->c:Lcom/duapps/ad/b;

    invoke-interface {v0, v1}, Lcom/duapps/ad/d;->a(Lcom/duapps/ad/b;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/f;->a:Lcom/duapps/ad/a;

    invoke-virtual {v0}, Lcom/duapps/ad/a;->a()V

    iget-object v0, p0, Lcom/duapps/ad/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/r;->h(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/duapps/ad/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/f;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/duapps/ad/f;->c()V

    :cond_0
    iput-object p1, p0, Lcom/duapps/ad/f;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/c;

    invoke-virtual {v0, p1}, Lcom/duapps/ad/c;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/duapps/ad/e;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/f;->d:Lcom/duapps/ad/e;

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/duapps/ad/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/c;

    invoke-virtual {v0}, Lcom/duapps/ad/c;->i()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/r;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/f;->h:Lcom/duapps/ad/d;

    sget-object v1, Lcom/duapps/ad/b;->c:Lcom/duapps/ad/b;

    invoke-interface {v0, v1}, Lcom/duapps/ad/d;->a(Lcom/duapps/ad/b;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/f;->a:Lcom/duapps/ad/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duapps/ad/a;->a(Lcom/duapps/ad/d;)V

    iget-object v0, p0, Lcom/duapps/ad/f;->a:Lcom/duapps/ad/a;

    iget-object v1, p0, Lcom/duapps/ad/f;->h:Lcom/duapps/ad/d;

    invoke-virtual {v0, v1}, Lcom/duapps/ad/a;->a(Lcom/duapps/ad/d;)V

    iget-object v0, p0, Lcom/duapps/ad/f;->a:Lcom/duapps/ad/a;

    invoke-virtual {v0}, Lcom/duapps/ad/a;->b()V

    iget-object v0, p0, Lcom/duapps/ad/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/r;->i(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public e()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/duapps/ad/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/c;

    invoke-virtual {v0}, Lcom/duapps/ad/c;->j()V

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/f;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/duapps/ad/f;->a:Lcom/duapps/ad/a;

    invoke-virtual {v0, v1}, Lcom/duapps/ad/a;->a(Lcom/duapps/ad/d;)V

    iget-object v0, p0, Lcom/duapps/ad/f;->a:Lcom/duapps/ad/a;

    invoke-virtual {v0}, Lcom/duapps/ad/a;->c()V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/duapps/ad/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/c;

    invoke-virtual {v0}, Lcom/duapps/ad/c;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/duapps/ad/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/c;

    invoke-virtual {v0}, Lcom/duapps/ad/c;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/duapps/ad/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/c;

    invoke-virtual {v0}, Lcom/duapps/ad/c;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/duapps/ad/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/c;

    invoke-virtual {v0}, Lcom/duapps/ad/c;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/duapps/ad/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/c;

    invoke-virtual {v0}, Lcom/duapps/ad/c;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()I
    .locals 1

    invoke-virtual {p0}, Lcom/duapps/ad/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/c;

    invoke-virtual {v0}, Lcom/duapps/ad/c;->g()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public l()Lcom/duapps/ad/c;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/c;

    return-object v0
.end method

.method public m()I
    .locals 1

    invoke-virtual {p0}, Lcom/duapps/ad/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/c;

    invoke-virtual {v0}, Lcom/duapps/ad/c;->k()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
