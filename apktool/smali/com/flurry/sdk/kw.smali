.class public Lcom/flurry/sdk/kw;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/kw$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/kw;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/kw;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/kw;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/kw;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/kw;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/kw;->a:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/kw;->a:Ljava/lang/String;

    return-object v0
.end method
