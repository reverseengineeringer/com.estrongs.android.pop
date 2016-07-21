.class public Lcom/flurry/sdk/ay;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# instance fields
.field private b:I

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ax;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/flurry/sdk/ay;->a:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/ay$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/ay;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/flurry/sdk/ay;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/flurry/sdk/ay;->a:I

    iput v0, p0, Lcom/flurry/sdk/ay;->b:I

    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/je;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/ay;->c:J

    iput-object p1, p0, Lcom/flurry/sdk/ay;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ay;->e:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ay;)I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/ay;->b:I

    return v0
.end method

.method static synthetic a(Lcom/flurry/sdk/ay;I)I
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/ay;->b:I

    return p1
.end method

.method static synthetic a(Lcom/flurry/sdk/ay;J)J
    .locals 1

    iput-wide p1, p0, Lcom/flurry/sdk/ay;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/flurry/sdk/ay;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ay;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/ay;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ay;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/ay;)J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/ay;->c:J

    return-wide v0
.end method

.method static synthetic c(Lcom/flurry/sdk/ay;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ay;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/ay;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ay;->e:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/ay;->b:I

    return v0
.end method

.method public a(Lcom/flurry/sdk/ax;)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ay;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ay;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/ay;->c:J

    return-wide v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ax;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/ay;->e:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/flurry/sdk/ay;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/flurry/sdk/ay;

    iget v2, p0, Lcom/flurry/sdk/ay;->b:I

    iget v3, p1, Lcom/flurry/sdk/ay;->b:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/flurry/sdk/ay;->c:J

    iget-wide v4, p1, Lcom/flurry/sdk/ay;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/flurry/sdk/ay;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/flurry/sdk/ay;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/flurry/sdk/ay;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/flurry/sdk/ay;->e:Ljava/util/List;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/flurry/sdk/ay;->e:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/flurry/sdk/ay;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/flurry/sdk/ay;->e:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x11

    iget v1, p0, Lcom/flurry/sdk/ay;->b:I

    xor-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/flurry/sdk/ay;->c:J

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/flurry/sdk/ay;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/ay;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/ay;->e:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flurry/sdk/ay;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    return v0
.end method
