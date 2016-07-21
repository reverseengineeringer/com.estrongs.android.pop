.class public Lcom/flurry/sdk/dl;
.super Lcom/flurry/sdk/kt;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private final f:Lcom/flurry/sdk/kk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kk",
            "<",
            "Lcom/flurry/sdk/df;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/flurry/sdk/kk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kk",
            "<",
            "Lcom/flurry/sdk/dg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/dl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dl;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dl;-><init>(Lcom/flurry/sdk/kt$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/kt$a;)V
    .locals 3

    const-string v0, "Ads"

    const-class v1, Lcom/flurry/sdk/dl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/kt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/kk;

    const-string v1, "sdk log request"

    new-instance v2, Lcom/flurry/sdk/dn;

    invoke-direct {v2}, Lcom/flurry/sdk/dn;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/kk;-><init>(Ljava/lang/String;Lcom/flurry/sdk/lb;)V

    iput-object v0, p0, Lcom/flurry/sdk/dl;->f:Lcom/flurry/sdk/kk;

    new-instance v0, Lcom/flurry/sdk/kk;

    const-string v1, "sdk log response"

    new-instance v2, Lcom/flurry/sdk/do;

    invoke-direct {v2}, Lcom/flurry/sdk/do;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/kk;-><init>(Ljava/lang/String;Lcom/flurry/sdk/lb;)V

    iput-object v0, p0, Lcom/flurry/sdk/dl;->g:Lcom/flurry/sdk/kk;

    const-string v0, "AdData_"

    iput-object v0, p0, Lcom/flurry/sdk/dl;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dl;->a(Lcom/flurry/sdk/kt$a;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dl;)Lcom/flurry/sdk/kk;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/dl;->g:Lcom/flurry/sdk/kk;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/dl;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/dl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/dl;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dl;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/dl;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/dl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/dl;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/dl;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flurry/sdk/dl;->e()V

    return-void
.end method

.method static synthetic d(Lcom/flurry/sdk/dl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/dl;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a([B)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v1, 0x0

    new-array v2, v6, [B

    array-length v0, p1

    add-int/lit8 v0, v0, -0x4

    new-array v3, v0, [B

    move v0, v1

    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    if-ge v0, v6, :cond_0

    aget-byte v4, p1, v0

    aput-byte v4, v2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v0, -0x4

    aget-byte v5, p1, v0

    aput-byte v5, v3, v4

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    new-array v2, v0, [B

    array-length v4, v3

    sub-int/2addr v4, v0

    new-array v4, v4, [B

    :goto_2
    array-length v5, v3

    if-ge v1, v5, :cond_3

    if-ge v1, v0, :cond_2

    aget-byte v5, v3, v1

    aput-byte v5, v2, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    sub-int v5, v1, v0

    aget-byte v6, v3, v1

    aput-byte v6, v4, v5

    goto :goto_3

    :cond_3
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/df;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/flurry/sdk/dl;->a:Ljava/lang/String;

    const-string v2, "Ad log that has to be sent is EMPTY or NULL"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/dl;->f:Lcom/flurry/sdk/kk;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/kk;->a(Ljava/lang/Object;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p2}, Lcom/flurry/sdk/dl;->a([BLjava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/flurry/sdk/dl;->b([BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/flurry/sdk/dl;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to encode sdk log request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method

.method protected a([BLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dl;->a([B)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/flurry/sdk/dl;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FlurryAdLogsManager: start upload data with id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/flurry/sdk/kn;

    invoke-direct {v2}, Lcom/flurry/sdk/kn;-><init>()V

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/kn;->a(Ljava/lang/String;)V

    const v0, 0x186a0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/kn;->d(I)V

    sget-object v0, Lcom/flurry/sdk/kp$a;->c:Lcom/flurry/sdk/kp$a;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/kp$a;)V

    const-string v0, "Content-Type"

    const-string v3, "application/x-flurry"

    invoke-virtual {v2, v0, v3}, Lcom/flurry/sdk/kn;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v3, "application/x-flurry"

    invoke-virtual {v2, v0, v3}, Lcom/flurry/sdk/kn;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FM-Checksum"

    invoke-static {v1}, Lcom/flurry/sdk/kk;->c([B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/flurry/sdk/kn;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/kx;

    invoke-direct {v0}, Lcom/flurry/sdk/kx;-><init>()V

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/lb;)V

    new-instance v0, Lcom/flurry/sdk/kx;

    invoke-direct {v0}, Lcom/flurry/sdk/kx;-><init>()V

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/kn;->b(Lcom/flurry/sdk/lb;)V

    invoke-virtual {v2, v1}, Lcom/flurry/sdk/kn;->a(Ljava/lang/Object;)V

    new-instance v0, Lcom/flurry/sdk/dl$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/flurry/sdk/dl$1;-><init>(Lcom/flurry/sdk/dl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/kn$a;)V

    invoke-static {}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/jq;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/flurry/sdk/jq;->a(Ljava/lang/Object;Lcom/flurry/sdk/lz;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/flurry/sdk/dl;->a:Ljava/lang/String;

    const-string v2, "Internal ERROR! Report is corrupt!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/flurry/sdk/dl;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a([BLjava/lang/String;)[B
    .locals 6

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v0, v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    array-length v0, v2

    array-length v3, v1

    add-int/2addr v0, v3

    array-length v3, p1

    add-int/2addr v0, v3

    new-array v3, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    array-length v4, v2

    if-ge v0, v4, :cond_0

    aget-byte v4, v2, v0

    aput-byte v4, v3, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v4, v2

    if-lt v0, v4, :cond_1

    array-length v4, v1

    array-length v5, v2

    add-int/2addr v4, v5

    if-ge v0, v4, :cond_1

    add-int/lit8 v4, v0, -0x4

    aget-byte v4, v1, v4

    aput-byte v4, v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v0, -0x4

    array-length v5, v1

    sub-int/2addr v4, v5

    aget-byte v4, p1, v4

    aput-byte v4, v3, v0

    goto :goto_1

    :cond_2
    return-object v3
.end method
