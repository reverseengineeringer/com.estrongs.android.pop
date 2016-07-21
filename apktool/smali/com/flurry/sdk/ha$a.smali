.class final Lcom/flurry/sdk/ha$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/hg;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/ha$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/ha$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/flurry/sdk/s;)Lcom/flurry/sdk/hf;
    .locals 1

    new-instance v0, Lcom/flurry/sdk/hd;

    invoke-direct {v0, p1, p2}, Lcom/flurry/sdk/hd;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;)V

    return-object v0
.end method
