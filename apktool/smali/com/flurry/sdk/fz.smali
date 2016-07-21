.class public Lcom/flurry/sdk/fz;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/flurry/sdk/fr;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/fz$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/fz;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/fz;I)I
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/fz;->d:I

    return p1
.end method

.method static synthetic a(Lcom/flurry/sdk/fz;Lcom/flurry/sdk/fr;)Lcom/flurry/sdk/fr;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/fz;->e:Lcom/flurry/sdk/fr;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/fz;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/fz;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/fz;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/fz;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/fz;I)I
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/fz;->f:I

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/fz;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/fz;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/fz;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/fz;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/flurry/sdk/fz;I)I
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/fz;->g:I

    return p1
.end method

.method static synthetic c(Lcom/flurry/sdk/fz;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/fz;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/flurry/sdk/fz;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/fz;->j:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fz;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/fz;->d:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fz;->j:Ljava/lang/String;

    return-object v0
.end method
