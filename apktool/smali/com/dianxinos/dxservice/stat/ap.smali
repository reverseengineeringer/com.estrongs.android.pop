.class Lcom/dianxinos/dxservice/stat/ap;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/dianxinos/dxservice/stat/ao;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dianxinos/dxservice/stat/ao;)V
    .locals 2

    iput-object p1, p0, Lcom/dianxinos/dxservice/stat/ap;->a:Lcom/dianxinos/dxservice/stat/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/ap;->b:Ljava/lang/Integer;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/ap;->c:Ljava/lang/Long;

    const-string v0, ""

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/ap;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/dianxinos/dxservice/stat/ap;)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ap;->c:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic c(Lcom/dianxinos/dxservice/stat/ap;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ap;->b:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ap;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dianxinos/dxservice/stat/ap;->b:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dianxinos/dxservice/stat/ap;->c:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/dxservice/stat/ap;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/dianxinos/dxservice/stat/ap;)Z
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ap;->c:Ljava/lang/Long;

    iget-object v1, p1, Lcom/dianxinos/dxservice/stat/ap;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ap;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ap;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public d()Z
    .locals 4

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ap;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ap;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "[firstInstallTime:%d versionCode:%d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dianxinos/dxservice/stat/ap;->c:Ljava/lang/Long;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dianxinos/dxservice/stat/ap;->b:Ljava/lang/Integer;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
