.class Lcom/dianxinos/dxservice/stat/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/dxservice/stat/x;


# direct methods
.method private constructor <init>(Lcom/dianxinos/dxservice/stat/x;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/dxservice/stat/z;->a:Lcom/dianxinos/dxservice/stat/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dianxinos/dxservice/stat/x;Lcom/dianxinos/dxservice/stat/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dianxinos/dxservice/stat/z;-><init>(Lcom/dianxinos/dxservice/stat/x;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/z;->a:Lcom/dianxinos/dxservice/stat/x;

    invoke-static {v0}, Lcom/dianxinos/dxservice/stat/x;->b(Lcom/dianxinos/dxservice/stat/x;)Lcom/dianxinos/dxservice/stat/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/z;->a:Lcom/dianxinos/dxservice/stat/x;

    invoke-static {v0}, Lcom/dianxinos/dxservice/stat/x;->c(Lcom/dianxinos/dxservice/stat/x;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/z;->a:Lcom/dianxinos/dxservice/stat/x;

    invoke-static {v0}, Lcom/dianxinos/dxservice/stat/x;->c(Lcom/dianxinos/dxservice/stat/x;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/z;->a:Lcom/dianxinos/dxservice/stat/x;

    invoke-static {v0}, Lcom/dianxinos/dxservice/stat/x;->c(Lcom/dianxinos/dxservice/stat/x;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/dianxinos/dxservice/stat/x;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/dianxinos/dxservice/a/e;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/z;->a:Lcom/dianxinos/dxservice/stat/x;

    invoke-static {v0}, Lcom/dianxinos/dxservice/stat/x;->c(Lcom/dianxinos/dxservice/stat/x;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
