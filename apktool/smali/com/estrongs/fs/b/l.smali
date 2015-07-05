.class final Lcom/estrongs/fs/b/l;
.super Lcom/estrongs/fs/a;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/impl/b/c;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/estrongs/fs/impl/b/c;)V
    .locals 0

    iput-object p2, p0, Lcom/estrongs/fs/b/l;->a:Lcom/estrongs/fs/impl/b/c;

    invoke-direct {p0, p1}, Lcom/estrongs/fs/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/l;->a:Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/c;->f()Lcom/estrongs/fs/impl/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/b/l;->a:Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/c;->f()Lcom/estrongs/fs/impl/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/g;->e()J

    move-result-wide v0

    return-wide v0
.end method
