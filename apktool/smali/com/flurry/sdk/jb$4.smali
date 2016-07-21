.class Lcom/flurry/sdk/jb$4;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:I

.field final synthetic e:Lcom/flurry/sdk/jb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jb;JJJI)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/jb$4;->e:Lcom/flurry/sdk/jb;

    iput-wide p2, p0, Lcom/flurry/sdk/jb$4;->a:J

    iput-wide p4, p0, Lcom/flurry/sdk/jb$4;->b:J

    iput-wide p6, p0, Lcom/flurry/sdk/jb$4;->c:J

    iput p8, p0, Lcom/flurry/sdk/jb$4;->d:I

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    iget-object v1, p0, Lcom/flurry/sdk/jb$4;->e:Lcom/flurry/sdk/jb;

    iget-wide v2, p0, Lcom/flurry/sdk/jb$4;->a:J

    iget-wide v4, p0, Lcom/flurry/sdk/jb$4;->b:J

    iget-wide v6, p0, Lcom/flurry/sdk/jb$4;->c:J

    iget v8, p0, Lcom/flurry/sdk/jb$4;->d:I

    invoke-virtual/range {v1 .. v8}, Lcom/flurry/sdk/jb;->a(JJJI)Lcom/flurry/sdk/iz;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/jb$4;->e:Lcom/flurry/sdk/jb;

    invoke-static {v1}, Lcom/flurry/sdk/jb;->f(Lcom/flurry/sdk/jb;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/flurry/sdk/jb$4;->e:Lcom/flurry/sdk/jb;

    invoke-static {v1}, Lcom/flurry/sdk/jb;->f(Lcom/flurry/sdk/jb;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/flurry/sdk/jb$4;->e:Lcom/flurry/sdk/jb;

    invoke-virtual {v0}, Lcom/flurry/sdk/jb;->c()V

    return-void
.end method
