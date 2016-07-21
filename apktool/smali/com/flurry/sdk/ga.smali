.class public Lcom/flurry/sdk/ga;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/flurry/sdk/fs;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/ga$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/ga;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ga;Lcom/flurry/sdk/fs;)Lcom/flurry/sdk/fs;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ga;->a:Lcom/flurry/sdk/fs;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/ga;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ga;->b:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/fs;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ga;->a:Lcom/flurry/sdk/fs;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ga;->b:Ljava/lang/String;

    return-object v0
.end method
