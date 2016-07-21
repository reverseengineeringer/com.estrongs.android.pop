.class public Lcom/flurry/sdk/lw;
.super Ljava/lang/Object;


# static fields
.field protected static a:Lcom/flurry/sdk/lw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/flurry/sdk/lw;

    invoke-direct {v0}, Lcom/flurry/sdk/lw;-><init>()V

    sput-object v0, Lcom/flurry/sdk/lw;->a:Lcom/flurry/sdk/lw;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/sdk/lx$a;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/lw;->a:Lcom/flurry/sdk/lw;

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/lw;->b(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/sdk/lx$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected b(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/sdk/lx$a;
    .locals 1

    new-instance v0, Lcom/flurry/sdk/lx$a;

    invoke-direct {v0, p1, p2}, Lcom/flurry/sdk/lx$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
