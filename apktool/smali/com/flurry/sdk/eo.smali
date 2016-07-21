.class public Lcom/flurry/sdk/eo;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/flurry/sdk/eo$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/flurry/sdk/eo$a;

    invoke-direct {v0}, Lcom/flurry/sdk/eo$a;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/eo;->a:Lcom/flurry/sdk/eo$a;

    return-void
.end method

.method private c()Ljava/lang/Long;
    .locals 4

    iget-object v0, p0, Lcom/flurry/sdk/eo;->a:Lcom/flurry/sdk/eo$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/eo$a;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/flurry/sdk/eo;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/flurry/sdk/eo;->a:Lcom/flurry/sdk/eo$a;

    invoke-virtual {v2}, Lcom/flurry/sdk/eo$a;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/eo;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
