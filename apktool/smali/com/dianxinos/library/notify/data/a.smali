.class public Lcom/dianxinos/library/notify/data/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Boolean;

.field public f:Lcom/dianxinos/library/notify/data/Packages;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()Z
    .locals 8

    const/16 v7, 0x31

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->b()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/dianxinos/library/notify/data/a;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/dianxinos/library/notify/data/a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/dianxinos/library/notify/data/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/dianxinos/library/notify/data/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lcom/dianxinos/library/notify/data/a;->a:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lcom/dianxinos/library/notify/data/a;->a:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->d()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eq v4, v7, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->e()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eq v5, v7, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->c()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eq v3, v7, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    if-eq v2, v7, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private c()Z
    .locals 6

    const/16 v5, 0x31

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->b()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/dianxinos/library/notify/data/a;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/dianxinos/library/notify/data/a;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/dianxinos/library/notify/data/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/dianxinos/library/notify/data/a;->b:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->g()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eq v2, v5, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    if-eq v3, v5, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private g()Z
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/library/notify/data/a;->f:Lcom/dianxinos/library/notify/data/Packages;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/data/a;->f:Lcom/dianxinos/library/notify/data/Packages;

    invoke-virtual {v0}, Lcom/dianxinos/library/notify/data/Packages;->doCheck()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/dianxinos/library/notify/data/a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "check network failure"

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/dianxinos/library/notify/data/a;->c()Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "check access point failure"

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/dianxinos/library/notify/data/a;->d()Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "checkDeviceRoot failure"

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/dianxinos/library/notify/data/a;->e()Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "checkApkRoot failure"

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/dianxinos/library/notify/data/a;->f()Z

    move-result v1

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "checkApkSystem failure"

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/dianxinos/library/notify/data/a;->g()Z

    move-result v1

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "checkPackages failure"

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method
