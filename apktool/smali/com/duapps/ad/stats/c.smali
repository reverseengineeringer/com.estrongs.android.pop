.class public Lcom/duapps/ad/stats/c;
.super Lcom/duapps/ad/stats/n;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/webkit/WebView;

.field private e:Lcom/duapps/ad/stats/i;

.field private f:Lcom/duapps/ad/base/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duapps/ad/stats/n;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/duapps/ad/stats/c;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/stats/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/stats/c;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/duapps/ad/stats/c;Lcom/duapps/ad/base/k;)Lcom/duapps/ad/base/k;
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/stats/c;->f:Lcom/duapps/ad/base/k;

    return-object p1
.end method

.method static synthetic b(Lcom/duapps/ad/stats/c;)Lcom/duapps/ad/base/k;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/stats/c;->f:Lcom/duapps/ad/base/k;

    return-object v0
.end method

.method static synthetic c(Lcom/duapps/ad/stats/c;)Lcom/duapps/ad/base/k;
    .locals 1

    invoke-direct {p0}, Lcom/duapps/ad/stats/c;->g()Lcom/duapps/ad/base/k;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/duapps/ad/stats/p;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/duapps/ad/stats/c;->c:Landroid/content/Context;

    const-string v1, "com.android.vending"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/ap;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ToolClickHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Click with Play installed? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/duapps/ad/stats/p;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/stats/c;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v4}, Lcom/duapps/ad/stats/p;->b(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/duapps/ad/stats/c;->h(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/duapps/ad/stats/p;->e()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/duapps/ad/stats/c;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;)Lcom/duapps/ad/base/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/duapps/ad/base/m;->a(Ljava/lang/String;)Lcom/duapps/ad/base/p;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/duapps/ad/stats/p;->a(Lcom/duapps/ad/base/p;)V

    iget v2, v1, Lcom/duapps/ad/base/p;->c:I

    if-ne v4, v2, :cond_2

    invoke-virtual {p1, v4}, Lcom/duapps/ad/stats/p;->b(Z)V

    iget-object v0, v1, Lcom/duapps/ad/base/p;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/duapps/ad/stats/c;->h(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v2, v1, Lcom/duapps/ad/base/p;->c:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    iget v2, v1, Lcom/duapps/ad/base/p;->c:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/duapps/ad/stats/p;->g()Lcom/duapps/ad/entity/AdData;

    move-result-object v2

    iget-object v2, v2, Lcom/duapps/ad/entity/AdData;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ToolClickHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/duapps/ad/stats/p;->g()Lcom/duapps/ad/entity/AdData;

    move-result-object v4

    iget-object v4, v4, Lcom/duapps/ad/entity/AdData;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " parse result is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, v1, Lcom/duapps/ad/base/p;->c:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and start google play via url -->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/duapps/ad/stats/c;->h(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget v1, Lcom/dianxinos/a/a/f;->duapps_ad_loading_switch_google_play_des:I

    invoke-virtual {p0, v1}, Lcom/duapps/ad/stats/c;->a(I)V

    invoke-virtual {p0, p1, v0}, Lcom/duapps/ad/stats/c;->b(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget v1, Lcom/dianxinos/a/a/f;->duapps_ad_loading_switch_google_play_des:I

    invoke-virtual {p0, v1}, Lcom/duapps/ad/stats/c;->a(I)V

    invoke-virtual {p0, p1, v0}, Lcom/duapps/ad/stats/c;->b(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/duapps/ad/stats/p;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/duapps/ad/stats/c;->g(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private e(Lcom/duapps/ad/stats/p;)V
    .locals 3

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHINA Click to download:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duapps/ad/stats/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/duapps/ad/stats/p;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/duapps/ad/stats/c;->g(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    return-void
.end method

.method private g()Lcom/duapps/ad/base/k;
    .locals 3

    new-instance v0, Lcom/duapps/ad/base/k;

    iget-object v1, p0, Lcom/duapps/ad/stats/c;->c:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/duapps/ad/base/k;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/duapps/ad/stats/f;

    invoke-direct {v1, p0}, Lcom/duapps/ad/stats/f;-><init>(Lcom/duapps/ad/stats/c;)V

    invoke-virtual {v0, v1}, Lcom/duapps/ad/base/k;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lcom/duapps/ad/base/k;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/stats/c;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/stats/c;->a:Landroid/os/Handler;

    new-instance v1, Lcom/duapps/ad/stats/e;

    invoke-direct {v1, p0}, Lcom/duapps/ad/stats/e;-><init>(Lcom/duapps/ad/stats/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected a(I)V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/stats/c;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/stats/c;->a:Landroid/os/Handler;

    new-instance v1, Lcom/duapps/ad/stats/d;

    invoke-direct {v1, p0, p1}, Lcom/duapps/ad/stats/d;-><init>(Lcom/duapps/ad/stats/c;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Lcom/duapps/ad/stats/p;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/duapps/ad/stats/c;->a(Lcom/duapps/ad/stats/p;Z)V

    return-void
.end method

.method a(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Lcom/duapps/ad/stats/p;->e()I

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/duapps/ad/base/p;

    invoke-direct {v0}, Lcom/duapps/ad/base/p;-><init>()V

    invoke-virtual {p1}, Lcom/duapps/ad/stats/p;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/base/p;->a:Ljava/lang/String;

    iput-object p2, v0, Lcom/duapps/ad/base/p;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/duapps/ad/stats/p;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/base/p;->b:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v0, Lcom/duapps/ad/base/p;->c:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/duapps/ad/base/p;->e:J

    iget-object v1, p0, Lcom/duapps/ad/stats/c;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/duapps/ad/stats/y;->a(Landroid/content/Context;)Lcom/duapps/ad/stats/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/duapps/ad/stats/y;->a(Lcom/duapps/ad/base/p;)V

    goto :goto_0
.end method

.method public a(Lcom/duapps/ad/stats/p;Z)V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/duapps/ad/stats/c;->b:Z

    iget-object v0, p0, Lcom/duapps/ad/stats/c;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/duapps/ad/stats/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/ap;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/duapps/ad/stats/c;->b(Lcom/duapps/ad/stats/p;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/duapps/ad/stats/c;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duapps/ad/stats/u;->a(Landroid/content/Context;Lcom/duapps/ad/stats/p;)V

    :cond_2
    invoke-virtual {p0}, Lcom/duapps/ad/stats/c;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/duapps/ad/stats/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/ap;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/duapps/ad/stats/c;->c(Lcom/duapps/ad/stats/p;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/duapps/ad/stats/p;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/duapps/ad/stats/p;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/duapps/ad/stats/c;->f(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/duapps/ad/stats/p;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1, v2}, Lcom/duapps/ad/stats/p;->b(Z)V

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clicked URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duapps/ad/stats/p;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/duapps/ad/base/DuAdNetwork;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/duapps/ad/stats/c;->d(Lcom/duapps/ad/stats/p;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lcom/duapps/ad/stats/c;->e(Lcom/duapps/ad/stats/p;)V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Open type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duapps/ad/stats/p;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected b()V
    .locals 0

    invoke-virtual {p0}, Lcom/duapps/ad/stats/c;->c()V

    return-void
.end method

.method protected b(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/duapps/ad/base/ap;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ToolClickHandler"

    const-string v1, "Newer OS, use WebView redirect."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/duapps/ad/stats/c;->d(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ToolClickHandler"

    const-string v1, "Older OS, use Http redirect."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lcom/duapps/ad/stats/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/duapps/ad/stats/g;-><init>(Lcom/duapps/ad/stats/c;Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/duapps/ad/base/an;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected c()V
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/stats/c;->e:Lcom/duapps/ad/stats/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/stats/c;->e:Lcom/duapps/ad/stats/i;

    invoke-interface {v0}, Lcom/duapps/ad/stats/i;->a()V

    :cond_0
    return-void
.end method

.method protected c(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/duapps/ad/stats/c;->f()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    new-instance v1, Lcom/duapps/ad/stats/j;

    invoke-direct {v1, p0, p1}, Lcom/duapps/ad/stats/j;-><init>(Lcom/duapps/ad/stats/c;Lcom/duapps/ad/stats/p;)V

    iput-object v1, p0, Lcom/duapps/ad/stats/c;->e:Lcom/duapps/ad/stats/i;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ToolClickHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Http] Decode URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/16 v3, 0xfa0

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ToolClickHandler"

    const-string v2, "[Http] Others error: "

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lcom/duapps/ad/stats/p;->o()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/duapps/ad/stats/c;->i(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/duapps/ad/stats/c;->a()V

    goto :goto_0
.end method

.method protected d(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/duapps/ad/stats/c;->d:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/duapps/ad/stats/c;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duapps/ad/stats/c;->d:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/duapps/ad/stats/c;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget-object v1, Lcom/duapps/ad/base/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/stats/c;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    new-instance v0, Lcom/duapps/ad/stats/k;

    invoke-direct {v0, p0, p1}, Lcom/duapps/ad/stats/k;-><init>(Lcom/duapps/ad/stats/c;Lcom/duapps/ad/stats/p;)V

    iput-object v0, p0, Lcom/duapps/ad/stats/c;->e:Lcom/duapps/ad/stats/i;

    iget-object v1, p0, Lcom/duapps/ad/stats/c;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WebView] Decode URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/stats/c;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/stats/c;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duapps/ad/stats/u;->i(Landroid/content/Context;Lcom/duapps/ad/stats/p;)V

    new-instance v0, Lcom/duapps/ad/stats/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/duapps/ad/stats/h;-><init>(Lcom/duapps/ad/stats/c;Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/duapps/ad/base/an;->b(Ljava/lang/Runnable;)V

    return-void
.end method
