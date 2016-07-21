.class Lcom/flurry/sdk/jb$6;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/flurry/sdk/jb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jb;J)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/jb$6;->b:Lcom/flurry/sdk/jb;

    iput-wide p2, p0, Lcom/flurry/sdk/jb$6;->a:J

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/flurry/sdk/jb$6;->b:Lcom/flurry/sdk/jb;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/flurry/sdk/jb$6;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/jb;ZJ)V

    return-void
.end method
