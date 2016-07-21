.class public Lcom/flurry/sdk/dj;
.super Lcom/flurry/sdk/kr;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/dj;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dj;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/kr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/dj$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/dj;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZI)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/kr;-><init>()V

    invoke-virtual {p0, p3}, Lcom/flurry/sdk/dj;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p4, p5}, Lcom/flurry/sdk/dj;->a(J)V

    iput-object p1, p0, Lcom/flurry/sdk/dj;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/sdk/dj;->c:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/flurry/sdk/dj;->d:Z

    iput p7, p0, Lcom/flurry/sdk/dj;->e:I

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dj;I)I
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/dj;->e:I

    return p1
.end method

.method static synthetic a(Lcom/flurry/sdk/dj;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/dj;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/dj;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/dj;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/dj;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/dj;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/dj;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/dj;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/sdk/dj;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/dj;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/flurry/sdk/dj;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/dj;->d:Z

    return v0
.end method

.method static synthetic d(Lcom/flurry/sdk/dj;)I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/dj;->e:I

    return v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/dj;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/dj;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/dj;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/dj;->d:Z

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/dj;->e:I

    return v0
.end method
