.class public abstract Lcom/flurry/sdk/bi;
.super Lcom/flurry/sdk/hf;


# static fields
.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/bi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bi;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/s;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/hf;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;)V

    return-void
.end method

.method private a(Lcom/flurry/sdk/bb;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/bb;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/flurry/sdk/bi;->d()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-interface {v3}, Lcom/flurry/sdk/s;->l()Lcom/flurry/sdk/au;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flurry/sdk/bi;->d()Lcom/flurry/sdk/s;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/bi;->c()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/fa;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 1
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

    sget-object v0, Lcom/flurry/sdk/bb;->f:Lcom/flurry/sdk/bb;

    invoke-direct {p0, v0, p1}, Lcom/flurry/sdk/bi;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 1
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

    sget-object v0, Lcom/flurry/sdk/bb;->h:Lcom/flurry/sdk/bb;

    invoke-direct {p0, v0, p1}, Lcom/flurry/sdk/bi;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 1
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

    sget-object v0, Lcom/flurry/sdk/bb;->v:Lcom/flurry/sdk/bb;

    invoke-direct {p0, v0, p1}, Lcom/flurry/sdk/bi;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    return-void
.end method

.method public d(Ljava/util/Map;)V
    .locals 1
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

    sget-object v0, Lcom/flurry/sdk/bb;->g:Lcom/flurry/sdk/bb;

    invoke-direct {p0, v0, p1}, Lcom/flurry/sdk/bi;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    return-void
.end method
