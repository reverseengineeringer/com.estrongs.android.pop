.class Lcom/estrongs/fs/b/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/r;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/r;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/s;->a:Lcom/estrongs/fs/b/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/b/s;->a:Lcom/estrongs/fs/b/r;

    iget-object v0, v0, Lcom/estrongs/fs/b/r;->y:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ao;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/s;->a:Lcom/estrongs/fs/b/r;

    invoke-static {v0}, Lcom/estrongs/fs/b/r;->a(Lcom/estrongs/fs/b/r;)V

    :cond_0
    return-void
.end method
