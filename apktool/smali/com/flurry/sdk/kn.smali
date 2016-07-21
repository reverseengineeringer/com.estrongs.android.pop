.class public Lcom/flurry/sdk/kn;
.super Lcom/flurry/sdk/kp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestObjectType:",
        "Ljava/lang/Object;",
        "ResponseObjectType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/sdk/kp;"
    }
.end annotation


# instance fields
.field private a:Lcom/flurry/sdk/kn$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kn$a",
            "<TRequestObjectType;TResponseObjectType;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestObjectType;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResponseObjectType;"
        }
    .end annotation
.end field

.field private d:Lcom/flurry/sdk/lb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/lb",
            "<TRequestObjectType;>;"
        }
    .end annotation
.end field

.field private e:Lcom/flurry/sdk/lb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/lb",
            "<TResponseObjectType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/kp;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/kn;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/kn;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/kn;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/kn;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/kn;)Lcom/flurry/sdk/lb;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/kn;->d:Lcom/flurry/sdk/lb;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/kn;)Lcom/flurry/sdk/lb;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/kn;->e:Lcom/flurry/sdk/lb;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/kn;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/kn;->s()V

    return-void
.end method

.method private r()V
    .locals 1

    new-instance v0, Lcom/flurry/sdk/kn$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/kn$1;-><init>(Lcom/flurry/sdk/kn;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/kp$c;)V

    return-void
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/kn;->a:Lcom/flurry/sdk/kn$a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/kn;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/kn;->a:Lcom/flurry/sdk/kn$a;

    iget-object v1, p0, Lcom/flurry/sdk/kn;->c:Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lcom/flurry/sdk/kn$a;->a(Lcom/flurry/sdk/kn;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/kn;->r()V

    invoke-super {p0}, Lcom/flurry/sdk/kp;->a()V

    return-void
.end method

.method public a(Lcom/flurry/sdk/kn$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/kn$a",
            "<TRequestObjectType;TResponseObjectType;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/flurry/sdk/kn;->a:Lcom/flurry/sdk/kn$a;

    return-void
.end method

.method public a(Lcom/flurry/sdk/lb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/lb",
            "<TRequestObjectType;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/flurry/sdk/kn;->d:Lcom/flurry/sdk/lb;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestObjectType;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/flurry/sdk/kn;->b:Ljava/lang/Object;

    return-void
.end method

.method public b(Lcom/flurry/sdk/lb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/lb",
            "<TResponseObjectType;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/flurry/sdk/kn;->e:Lcom/flurry/sdk/lb;

    return-void
.end method
