.class public Lcom/flurry/sdk/fy;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/flurry/sdk/jx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jx",
            "<",
            "Lcom/flurry/sdk/fs;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/flurry/sdk/jx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jx",
            "<",
            "Lcom/flurry/sdk/ft;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/flurry/sdk/fz;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/fy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/fy;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/fy;I)I
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/fy;->a:I

    return p1
.end method

.method public static a(Lcom/flurry/sdk/fy;Lcom/flurry/sdk/fy;)Lcom/flurry/sdk/fy;
    .locals 4

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/flurry/sdk/jx;

    invoke-direct {v0}, Lcom/flurry/sdk/jx;-><init>()V

    invoke-virtual {p0}, Lcom/flurry/sdk/fy;->c()Lcom/flurry/sdk/jx;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jx;->a(Lcom/flurry/sdk/jx;)V

    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/fy;->c()Lcom/flurry/sdk/jx;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jx;->a(Lcom/flurry/sdk/jx;)V

    :cond_3
    new-instance v1, Lcom/flurry/sdk/jx;

    invoke-direct {v1}, Lcom/flurry/sdk/jx;-><init>()V

    invoke-virtual {p0}, Lcom/flurry/sdk/fy;->d()Lcom/flurry/sdk/jx;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jx;->a(Lcom/flurry/sdk/jx;)V

    :cond_4
    invoke-virtual {p1}, Lcom/flurry/sdk/fy;->d()Lcom/flurry/sdk/jx;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jx;->a(Lcom/flurry/sdk/jx;)V

    :cond_5
    new-instance v2, Lcom/flurry/sdk/fy$a;

    invoke-direct {v2}, Lcom/flurry/sdk/fy$a;-><init>()V

    invoke-virtual {p1}, Lcom/flurry/sdk/fy;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/fy$a;->a(I)Lcom/flurry/sdk/fy$a;

    invoke-virtual {p1}, Lcom/flurry/sdk/fy;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/fy$a;->b(I)Lcom/flurry/sdk/fy$a;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/fy$a;->a(Lcom/flurry/sdk/jx;)Lcom/flurry/sdk/fy$a;

    invoke-virtual {v2, v1}, Lcom/flurry/sdk/fy$a;->b(Lcom/flurry/sdk/jx;)Lcom/flurry/sdk/fy$a;

    invoke-virtual {p1}, Lcom/flurry/sdk/fy;->e()Lcom/flurry/sdk/fz;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/fy$a;->a(Lcom/flurry/sdk/fz;)Lcom/flurry/sdk/fy$a;

    invoke-virtual {v2}, Lcom/flurry/sdk/fy$a;->a()Lcom/flurry/sdk/fy;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/fy;Lcom/flurry/sdk/fz;)Lcom/flurry/sdk/fz;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/fy;->e:Lcom/flurry/sdk/fz;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/fy;Lcom/flurry/sdk/jx;)Lcom/flurry/sdk/jx;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/fy;->c:Lcom/flurry/sdk/jx;

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/fy;I)I
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/fy;->b:I

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/fy;Lcom/flurry/sdk/jx;)Lcom/flurry/sdk/jx;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/fy;->d:Lcom/flurry/sdk/jx;

    return-object p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/fy;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/fy;->b:I

    return v0
.end method

.method public c()Lcom/flurry/sdk/jx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/jx",
            "<",
            "Lcom/flurry/sdk/fs;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/fy;->c:Lcom/flurry/sdk/jx;

    return-object v0
.end method

.method public d()Lcom/flurry/sdk/jx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/jx",
            "<",
            "Lcom/flurry/sdk/ft;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/fy;->d:Lcom/flurry/sdk/jx;

    return-object v0
.end method

.method public e()Lcom/flurry/sdk/fz;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fy;->e:Lcom/flurry/sdk/fz;

    return-object v0
.end method
