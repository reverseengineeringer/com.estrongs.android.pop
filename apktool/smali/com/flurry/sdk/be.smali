.class public Lcom/flurry/sdk/be;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/flurry/sdk/cw;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:J

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/be$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/be;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/cv;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/flurry/sdk/cv;->a:Lcom/flurry/sdk/cw;

    iput-object v0, p0, Lcom/flurry/sdk/be;->a:Lcom/flurry/sdk/cw;

    iget-object v0, p1, Lcom/flurry/sdk/cv;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/sdk/be;->b:Ljava/lang/String;

    iget-wide v0, p1, Lcom/flurry/sdk/cv;->c:J

    iput-wide v0, p0, Lcom/flurry/sdk/be;->c:J

    iget-wide v0, p1, Lcom/flurry/sdk/cv;->d:J

    iput-wide v0, p0, Lcom/flurry/sdk/be;->d:J

    iget-wide v0, p1, Lcom/flurry/sdk/cv;->e:J

    iput-wide v0, p0, Lcom/flurry/sdk/be;->e:J

    iget v0, p1, Lcom/flurry/sdk/cv;->f:I

    iput v0, p0, Lcom/flurry/sdk/be;->f:I

    iget v0, p1, Lcom/flurry/sdk/cv;->g:I

    iput v0, p0, Lcom/flurry/sdk/be;->g:I

    iget v0, p1, Lcom/flurry/sdk/cv;->h:I

    iput v0, p0, Lcom/flurry/sdk/be;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/be;->i:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/be;->j:J

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/be;I)I
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/be;->i:I

    return p1
.end method

.method static synthetic a(Lcom/flurry/sdk/be;J)J
    .locals 1

    iput-wide p1, p0, Lcom/flurry/sdk/be;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/flurry/sdk/be;)Lcom/flurry/sdk/cw;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/be;->a:Lcom/flurry/sdk/cw;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/be;Lcom/flurry/sdk/cw;)Lcom/flurry/sdk/cw;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/be;->a:Lcom/flurry/sdk/cw;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/be;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/be;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/be;I)I
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/be;->f:I

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/be;J)J
    .locals 1

    iput-wide p1, p0, Lcom/flurry/sdk/be;->j:J

    return-wide p1
.end method

.method static synthetic b(Lcom/flurry/sdk/be;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/be;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/be;I)I
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/be;->g:I

    return p1
.end method

.method static synthetic c(Lcom/flurry/sdk/be;)J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/be;->c:J

    return-wide v0
.end method

.method static synthetic c(Lcom/flurry/sdk/be;J)J
    .locals 1

    iput-wide p1, p0, Lcom/flurry/sdk/be;->c:J

    return-wide p1
.end method

.method static synthetic d(Lcom/flurry/sdk/be;I)I
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/be;->h:I

    return p1
.end method

.method static synthetic d(Lcom/flurry/sdk/be;)J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/be;->d:J

    return-wide v0
.end method

.method static synthetic d(Lcom/flurry/sdk/be;J)J
    .locals 1

    iput-wide p1, p0, Lcom/flurry/sdk/be;->d:J

    return-wide p1
.end method

.method static synthetic e(Lcom/flurry/sdk/be;)J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/be;->e:J

    return-wide v0
.end method

.method static synthetic f(Lcom/flurry/sdk/be;)I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/be;->f:I

    return v0
.end method

.method static synthetic g(Lcom/flurry/sdk/be;)I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/be;->g:I

    return v0
.end method

.method static synthetic h(Lcom/flurry/sdk/be;)I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/be;->h:I

    return v0
.end method

.method static synthetic i(Lcom/flurry/sdk/be;)I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/be;->i:I

    return v0
.end method

.method static synthetic j(Lcom/flurry/sdk/be;)J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/be;->j:J

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget v0, p0, Lcom/flurry/sdk/be;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/be;->i:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/be;->j:J

    return-void
.end method

.method public b()Lcom/flurry/sdk/cw;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/be;->a:Lcom/flurry/sdk/cw;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/be;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/be;->c:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/be;->d:J

    return-wide v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/be;->e:J

    return-wide v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/be;->f:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/be;->g:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/be;->h:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/be;->i:I

    return v0
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/be;->j:J

    return-wide v0
.end method
