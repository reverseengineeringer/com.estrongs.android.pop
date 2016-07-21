.class public Lcom/dianxinos/dxservice/stat/an;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/dianxinos/dxservice/stat/am;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "stat.SystemInfoService"

    sput-object v0, Lcom/dianxinos/dxservice/stat/an;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dianxinos/dxservice/stat/an;->b:Landroid/content/Context;

    new-instance v0, Lcom/dianxinos/dxservice/stat/am;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const-string v4, "sys"

    iget-object v5, p0, Lcom/dianxinos/dxservice/stat/an;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/dianxinos/DXStatService/a/a;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "default_input"

    invoke-static {v4, v5, v6}, Lcom/dianxinos/dxservice/stat/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, Lcom/dianxinos/dxservice/stat/am;-><init>(IIILjava/lang/String;I)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/an;->c:Lcom/dianxinos/dxservice/stat/am;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/an;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()Z
    .locals 6

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/an;->b:Landroid/content/Context;

    const-string v1, "di"

    invoke-static {v0, v1}, Lcom/dianxinos/dxservice/a/c;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v4, v0

    const-wide/32 v4, 0x240c8400

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dianxinos/dxservice/stat/an;->a:Ljava/lang/String;

    const-string v1, "It\'s time to report default input"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->c:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/dianxinos/dxservice/stat/an;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "It\'s not time to report default input, because interval is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not 7 days!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/dianxinos/dxservice/stat/an;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/an;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/dxservice/core/a;->a(Landroid/content/Context;)Lcom/dianxinos/dxservice/core/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/an;->c:Lcom/dianxinos/dxservice/stat/am;

    invoke-direct {p0}, Lcom/dianxinos/dxservice/stat/an;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dianxinos/dxservice/core/a;->a(Lcom/dianxinos/dxservice/stat/am;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/an;->b:Landroid/content/Context;

    const-string v2, "di"

    invoke-static {v1, v2}, Lcom/dianxinos/dxservice/a/c;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return v0
.end method
