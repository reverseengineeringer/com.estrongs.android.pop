.class Lcom/flurry/sdk/ig$2$1;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/flurry/sdk/ig$2;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ig$2;[B)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ig$2$1;->b:Lcom/flurry/sdk/ig$2;

    iput-object p2, p0, Lcom/flurry/sdk/ig$2$1;->a:[B

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/flurry/sdk/ig$2$1;->b:Lcom/flurry/sdk/ig$2;

    iget-object v0, v0, Lcom/flurry/sdk/ig$2;->c:Lcom/flurry/sdk/ig;

    iget-object v1, p0, Lcom/flurry/sdk/ig$2$1;->b:Lcom/flurry/sdk/ig$2;

    iget-wide v2, v1, Lcom/flurry/sdk/ig$2;->a:J

    iget-object v1, p0, Lcom/flurry/sdk/ig$2$1;->b:Lcom/flurry/sdk/ig$2;

    iget-boolean v1, v1, Lcom/flurry/sdk/ig$2;->b:Z

    iget-object v4, p0, Lcom/flurry/sdk/ig$2$1;->a:[B

    invoke-static {v0, v2, v3, v1, v4}, Lcom/flurry/sdk/ig;->a(Lcom/flurry/sdk/ig;JZ[B)V

    return-void
.end method
