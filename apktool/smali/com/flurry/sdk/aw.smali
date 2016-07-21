.class public Lcom/flurry/sdk/aw;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/flurry/sdk/ay;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/i;->a(Ljava/lang/String;)Lcom/flurry/sdk/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/aw;->a:Lcom/flurry/sdk/ay;

    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/ay;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/aw;->a:Lcom/flurry/sdk/ay;

    return-object v0
.end method
