.class public Lcom/flurry/sdk/fu;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/flurry/sdk/fw;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/fu$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/fu;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/fu;I)I
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/fu;->b:I

    return p1
.end method

.method static synthetic a(Lcom/flurry/sdk/fu;Lcom/flurry/sdk/fw;)Lcom/flurry/sdk/fw;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/fu;->c:Lcom/flurry/sdk/fw;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/fu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/fu;->a:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fu;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/fu;->b:I

    return v0
.end method

.method public c()Lcom/flurry/sdk/fw;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fu;->c:Lcom/flurry/sdk/fw;

    return-object v0
.end method
