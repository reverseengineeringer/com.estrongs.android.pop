.class public final Lcom/flurry/sdk/hd;
.super Lcom/flurry/sdk/hf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/s;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/hf;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;)V

    return-void
.end method

.method private a(Lcom/flurry/sdk/s;Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/flurry/sdk/gr;

    invoke-direct {v0}, Lcom/flurry/sdk/gr;-><init>()V

    iput-object p1, v0, Lcom/flurry/sdk/gr;->a:Lcom/flurry/sdk/s;

    iput-object p2, v0, Lcom/flurry/sdk/gr;->b:Ljava/lang/String;

    iput-boolean p3, v0, Lcom/flurry/sdk/gr;->c:Z

    invoke-virtual {v0}, Lcom/flurry/sdk/gr;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/flurry/sdk/hd;->d()Lcom/flurry/sdk/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/s;->l()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v4, v3}, Lcom/flurry/sdk/hd;->a(Lcom/flurry/sdk/s;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/hd;->c()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v4, v3, v2}, Lcom/flurry/sdk/fi;->a(Landroid/content/Context;Lcom/flurry/sdk/s;Ljava/lang/String;ZZ)Z

    goto :goto_0
.end method
