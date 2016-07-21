.class public Lcom/flurry/sdk/jc;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:J

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/iz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/jc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/jc;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jc;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/jc;J)J
    .locals 1

    iput-wide p1, p0, Lcom/flurry/sdk/jc;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/flurry/sdk/jc;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/jc;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/jc;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/jc;->b:Z

    return p1
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/jc;->b:Z

    return v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/jc;->c:J

    return-wide v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/iz;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/jc;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
