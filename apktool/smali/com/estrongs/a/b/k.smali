.class Lcom/estrongs/a/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/i;


# instance fields
.field final synthetic a:Lcom/estrongs/a/b/d;


# direct methods
.method constructor <init>(Lcom/estrongs/a/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/a/b/k;->a:Lcom/estrongs/a/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/h;)Z
    .locals 2

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
