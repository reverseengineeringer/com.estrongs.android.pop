.class public Lcom/flurry/sdk/ip;
.super Ljava/lang/Object;


# instance fields
.field private a:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/ip;->a:[B

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ip;)[B
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ip;->a:[B

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/ip;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ip;->a:[B

    return-object p1
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ip;->a:[B

    return-object v0
.end method
