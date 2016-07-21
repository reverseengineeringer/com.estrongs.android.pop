.class final Lcom/flurry/sdk/gz$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/gw;


# instance fields
.field private a:Lcom/flurry/sdk/gt$a;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/flurry/sdk/gz$a$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gz$a$1;-><init>(Lcom/flurry/sdk/gz$a;)V

    iput-object v0, p0, Lcom/flurry/sdk/gz$a;->a:Lcom/flurry/sdk/gt$a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/gz$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/gz$a;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/flurry/sdk/gr;

    invoke-direct {v0}, Lcom/flurry/sdk/gr;-><init>()V

    sget-object v1, Lcom/flurry/sdk/gr$a;->b:Lcom/flurry/sdk/gr$a;

    iput-object v1, v0, Lcom/flurry/sdk/gr;->e:Lcom/flurry/sdk/gr$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/gr;->b()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/gz$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/gz$a;->a()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Lcom/flurry/sdk/s;)Lcom/flurry/sdk/gt;
    .locals 3

    new-instance v0, Lcom/flurry/sdk/gs;

    iget-object v1, p0, Lcom/flurry/sdk/gz$a;->a:Lcom/flurry/sdk/gt$a;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/flurry/sdk/gs;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;Z)V

    return-object v0
.end method
