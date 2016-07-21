.class public Lcom/flurry/sdk/fx;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/flurry/sdk/fq;

.field private d:Lcom/flurry/sdk/fy;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/fx$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/fx;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/fx;I)I
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/fx;->b:I

    return p1
.end method

.method static synthetic a(Lcom/flurry/sdk/fx;Lcom/flurry/sdk/fq;)Lcom/flurry/sdk/fq;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/fx;->c:Lcom/flurry/sdk/fq;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/fx;Lcom/flurry/sdk/fy;)Lcom/flurry/sdk/fy;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/fx;->d:Lcom/flurry/sdk/fy;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/fx;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/fx;->a:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fx;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/fx;->b:I

    return v0
.end method

.method public c()Lcom/flurry/sdk/fq;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fx;->c:Lcom/flurry/sdk/fq;

    return-object v0
.end method

.method public d()Lcom/flurry/sdk/fy;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fx;->d:Lcom/flurry/sdk/fy;

    return-object v0
.end method
