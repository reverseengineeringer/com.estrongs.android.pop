.class Lcom/estrongs/a/b/g;
.super Lcom/estrongs/a/b/n;


# instance fields
.field final synthetic a:Lcom/estrongs/a/b/e;


# direct methods
.method constructor <init>(Lcom/estrongs/a/b/e;Lcom/estrongs/fs/b/bl;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/a/b/g;->a:Lcom/estrongs/a/b/e;

    iget-object v0, p1, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-direct {p0, v0, p2}, Lcom/estrongs/a/b/n;-><init>(Lcom/estrongs/a/b/d;Lcom/estrongs/fs/b/bl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/a/b/g;->a:Lcom/estrongs/a/b/e;

    iget-object v0, v0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    iget-object v1, p0, Lcom/estrongs/a/b/g;->b:Lcom/estrongs/fs/b/bl;

    invoke-static {v0, v1}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/a/b/d;Ljava/lang/Object;)V

    return-void
.end method
