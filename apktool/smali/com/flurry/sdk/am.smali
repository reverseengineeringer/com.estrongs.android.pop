.class public abstract Lcom/flurry/sdk/am;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/flurry/sdk/am$a;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:I

.field private f:Lcom/flurry/sdk/aq;

.field private g:J

.field private h:Z

.field private i:I

.field private j:J

.field private k:I

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/am;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/am;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/flurry/sdk/am;->d:J

    const v0, 0x9c40

    iput v0, p0, Lcom/flurry/sdk/am;->e:I

    const-wide/32 v0, 0x19000

    iput-wide v0, p0, Lcom/flurry/sdk/am;->j:J

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/am;I)I
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/am;->i:I

    return p1
.end method

.method static synthetic a(Lcom/flurry/sdk/am;J)J
    .locals 1

    iput-wide p1, p0, Lcom/flurry/sdk/am;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/flurry/sdk/am;Lcom/flurry/sdk/kp;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/flurry/sdk/am;->a(Lcom/flurry/sdk/kp;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Lcom/flurry/sdk/kp;)J
    .locals 6

    const-wide/16 v2, -0x1

    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/kp;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/am;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Downloader: could not determine content length for url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/am;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/am;)Z
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/am;->p()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/flurry/sdk/am;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/am;->l:Z

    return p1
.end method

.method private b(I)Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s__%03d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/flurry/sdk/am;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/sdk/am;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/am;->k()V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/am;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/am;->h:Z

    return p1
.end method

.method private c(I)Ljava/lang/String;
    .locals 10

    const-string v0, "%s=%d-%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "bytes"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    int-to-long v4, p1

    iget-wide v6, p0, Lcom/flurry/sdk/am;->j:J

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/flurry/sdk/am;->g:J

    add-int/lit8 v3, p1, 0x1

    int-to-long v6, v3

    iget-wide v8, p0, Lcom/flurry/sdk/am;->j:J

    mul-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/am;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/am;->j()V

    return-void
.end method

.method static synthetic d(Lcom/flurry/sdk/am;)J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/am;->g:J

    return-wide v0
.end method

.method static synthetic e(Lcom/flurry/sdk/am;)J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/am;->d:J

    return-wide v0
.end method

.method static synthetic f(Lcom/flurry/sdk/am;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/am;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/flurry/sdk/am;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/am;->l:Z

    return v0
.end method

.method static synthetic h(Lcom/flurry/sdk/am;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/am;->o()V

    return-void
.end method

.method static synthetic i(Lcom/flurry/sdk/am;)J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/am;->j:J

    return-wide v0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/am;->a:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .locals 4

    invoke-virtual {p0}, Lcom/flurry/sdk/am;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/am;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloader: Requesting file from url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/am;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/kp;

    invoke-direct {v0}, Lcom/flurry/sdk/kp;-><init>()V

    iget-object v1, p0, Lcom/flurry/sdk/am;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kp;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/flurry/sdk/kp$a;->b:Lcom/flurry/sdk/kp$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kp;->a(Lcom/flurry/sdk/kp$a;)V

    iget v1, p0, Lcom/flurry/sdk/am;->e:I

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kp;->d(I)V

    new-instance v1, Lcom/flurry/sdk/am$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/am$2;-><init>(Lcom/flurry/sdk/am;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kp;->a(Lcom/flurry/sdk/kp$c;)V

    invoke-static {}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/jq;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/jq;->a(Ljava/lang/Object;Lcom/flurry/sdk/lz;)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/flurry/sdk/am;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/am;->l()V

    return-void
.end method

.method static synthetic k(Lcom/flurry/sdk/am;)Lcom/flurry/sdk/aq;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/am;->f:Lcom/flurry/sdk/aq;

    return-object v0
.end method

.method private k()V
    .locals 5

    invoke-virtual {p0}, Lcom/flurry/sdk/am;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/flurry/sdk/kn;

    invoke-direct {v0}, Lcom/flurry/sdk/kn;-><init>()V

    iget-object v1, p0, Lcom/flurry/sdk/am;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/flurry/sdk/kp$a;->f:Lcom/flurry/sdk/kp$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/kp$a;)V

    new-instance v1, Lcom/flurry/sdk/am$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/am$3;-><init>(Lcom/flurry/sdk/am;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/kn$a;)V

    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/am;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloader: requesting HTTP HEAD for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/am;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/jq;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/jq;->a(Ljava/lang/Object;Lcom/flurry/sdk/lz;)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/flurry/sdk/am;)I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/am;->k:I

    return v0
.end method

.method private l()V
    .locals 3

    invoke-virtual {p0}, Lcom/flurry/sdk/am;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/am;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/flurry/sdk/am;->i:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/flurry/sdk/am;->f:Lcom/flurry/sdk/aq;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/am;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/aq;->d(Ljava/lang/String;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/am;->m()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/flurry/sdk/am;->j()V

    goto :goto_0
.end method

.method static synthetic m(Lcom/flurry/sdk/am;)I
    .locals 2

    iget v0, p0, Lcom/flurry/sdk/am;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/flurry/sdk/am;->k:I

    return v0
.end method

.method private m()V
    .locals 6

    const/4 v5, 0x3

    :goto_0
    iget v0, p0, Lcom/flurry/sdk/am;->k:I

    iget v1, p0, Lcom/flurry/sdk/am;->i:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/flurry/sdk/am;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Lcom/flurry/sdk/am;->k:I

    invoke-direct {p0, v0}, Lcom/flurry/sdk/am;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/flurry/sdk/am;->k:I

    invoke-direct {p0, v1}, Lcom/flurry/sdk/am;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/am;->f:Lcom/flurry/sdk/aq;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/aq;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/flurry/sdk/am;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloader: Skipping chunk with range:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/am;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chunk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/flurry/sdk/am;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/flurry/sdk/am;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/am;->k:I

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/flurry/sdk/am;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloader: Requesting chunk with range:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/am;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " chunk: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/flurry/sdk/am;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/flurry/sdk/kp;

    invoke-direct {v2}, Lcom/flurry/sdk/kp;-><init>()V

    iget-object v3, p0, Lcom/flurry/sdk/am;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/kp;->a(Ljava/lang/String;)V

    sget-object v3, Lcom/flurry/sdk/kp$a;->b:Lcom/flurry/sdk/kp$a;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/kp;->a(Lcom/flurry/sdk/kp$a;)V

    iget v3, p0, Lcom/flurry/sdk/am;->e:I

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/kp;->d(I)V

    const-string v3, "Range"

    invoke-virtual {v2, v3, v1}, Lcom/flurry/sdk/kp;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/flurry/sdk/am$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/flurry/sdk/am$4;-><init>(Lcom/flurry/sdk/am;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/kp;->a(Lcom/flurry/sdk/kp$c;)V

    invoke-static {}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/jq;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/flurry/sdk/jq;->a(Ljava/lang/Object;Lcom/flurry/sdk/lz;)V

    goto/16 :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/flurry/sdk/am;->n()V

    goto/16 :goto_1
.end method

.method private n()V
    .locals 8

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/flurry/sdk/am;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/flurry/sdk/am;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloader: assembling output file for url: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/flurry/sdk/am;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/am;->f()Ljava/io/OutputStream;

    move-result-object v4

    move v1, v0

    :goto_1
    iget v2, p0, Lcom/flurry/sdk/am;->i:I

    if-ge v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/flurry/sdk/am;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Download cancelled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/flurry/sdk/am;->g()V

    move-object v3, v1

    :goto_2
    if-nez v3, :cond_4

    sget-object v0, Lcom/flurry/sdk/am;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloader: assemble succeeded for url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/am;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/am;->l:Z

    :goto_3
    invoke-direct {p0}, Lcom/flurry/sdk/am;->o()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-direct {p0, v1}, Lcom/flurry/sdk/am;->b(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    :try_start_2
    iget-object v2, p0, Lcom/flurry/sdk/am;->f:Lcom/flurry/sdk/aq;

    invoke-virtual {v2, v5}, Lcom/flurry/sdk/aq;->a(Ljava/lang/String;)Lcom/flurry/sdk/aq$b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    if-nez v2, :cond_2

    :try_start_3
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create reader for chunk key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    :goto_4
    :try_start_4
    invoke-static {v2}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/flurry/sdk/am;->g()V

    throw v0

    :cond_2
    :try_start_5
    invoke-virtual {v2}, Lcom/flurry/sdk/aq$b;->a()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/flurry/sdk/lt;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v2}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    iget-object v2, p0, Lcom/flurry/sdk/am;->f:Lcom/flurry/sdk/aq;

    invoke-virtual {v2, v5}, Lcom/flurry/sdk/aq;->c(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/flurry/sdk/am;->g()V

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/flurry/sdk/am;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloader: assemble failed for url: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/flurry/sdk/am;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " failed with exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_5
    iget v1, p0, Lcom/flurry/sdk/am;->i:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/flurry/sdk/am;->f:Lcom/flurry/sdk/aq;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/am;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/aq;->c(Ljava/lang/String;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/flurry/sdk/am;->h()V

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v2, v3

    goto :goto_4
.end method

.method static synthetic n(Lcom/flurry/sdk/am;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/am;->m()V

    return-void
.end method

.method private o()V
    .locals 4

    invoke-virtual {p0}, Lcom/flurry/sdk/am;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/am;->b:Lcom/flurry/sdk/am$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/am;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloader: finished -- success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/flurry/sdk/am;->l:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/am;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/am;->b:Lcom/flurry/sdk/am$a;

    invoke-interface {v0, p0}, Lcom/flurry/sdk/am$a;->a(Lcom/flurry/sdk/am;)V

    goto :goto_0
.end method

.method private p()Z
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/am;->f:Lcom/flurry/sdk/aq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/flurry/sdk/am;->f:Lcom/flurry/sdk/aq;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/flurry/sdk/am;->h:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/flurry/sdk/am;->i:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/am;->e:I

    return-void
.end method

.method public a(Lcom/flurry/sdk/am$a;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/am;->b:Lcom/flurry/sdk/am$a;

    return-void
.end method

.method public a(Lcom/flurry/sdk/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/am;->f:Lcom/flurry/sdk/aq;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/am;->c:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/am;->l:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/am;->m:Z

    return v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/am;->g:J

    return-wide v0
.end method

.method public d()V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/am$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/am$1;-><init>(Lcom/flurry/sdk/am;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/am;->m:Z

    invoke-static {}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/jq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/jq;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract f()Ljava/io/OutputStream;
.end method

.method protected abstract g()V
.end method

.method protected abstract h()V
.end method
