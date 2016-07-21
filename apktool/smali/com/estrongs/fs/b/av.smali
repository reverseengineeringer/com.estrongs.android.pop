.class Lcom/estrongs/fs/b/av;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/l;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/au;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/au;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/av;->a:Lcom/estrongs/fs/b/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/m;)V
    .locals 9

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/estrongs/fs/b/av;->a:Lcom/estrongs/fs/b/au;

    iget-wide v0, v0, Lcom/estrongs/fs/b/au;->g:J

    iget-wide v2, p2, Lcom/estrongs/a/a/m;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/av;->a:Lcom/estrongs/fs/b/au;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p2, Lcom/estrongs/a/a/m;->d:J

    iget-object v3, p0, Lcom/estrongs/fs/b/av;->a:Lcom/estrongs/fs/b/au;

    iget-wide v6, v3, Lcom/estrongs/fs/b/au;->g:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p2, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    aput-object v2, v1, v8

    invoke-virtual {v0, v8, v1}, Lcom/estrongs/fs/b/au;->sendMessage(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/av;->a:Lcom/estrongs/fs/b/au;

    iget-wide v2, p2, Lcom/estrongs/a/a/m;->d:J

    iput-wide v2, v0, Lcom/estrongs/fs/b/au;->g:J

    :cond_0
    return-void
.end method
