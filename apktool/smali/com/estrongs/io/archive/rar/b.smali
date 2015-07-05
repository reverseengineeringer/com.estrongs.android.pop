.class Lcom/estrongs/io/archive/rar/b;
.super Lcom/estrongs/io/archive/rar/e;


# instance fields
.field final synthetic a:Lcom/estrongs/io/a/b;

.field final synthetic b:Lcom/estrongs/io/archive/g;

.field final synthetic c:Lcom/estrongs/io/archive/rar/a;


# direct methods
.method constructor <init>(Lcom/estrongs/io/archive/rar/a;Lcom/estrongs/io/a/d;Lcom/estrongs/io/a/b;Lcom/estrongs/io/archive/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/io/archive/rar/b;->c:Lcom/estrongs/io/archive/rar/a;

    iput-object p3, p0, Lcom/estrongs/io/archive/rar/b;->a:Lcom/estrongs/io/a/b;

    iput-object p4, p0, Lcom/estrongs/io/archive/rar/b;->b:Lcom/estrongs/io/archive/g;

    invoke-direct {p0, p2}, Lcom/estrongs/io/archive/rar/e;-><init>(Lcom/estrongs/io/a/d;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 6

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/b;->a:Lcom/estrongs/io/a/b;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/io/archive/rar/b;->b:Lcom/estrongs/io/archive/g;

    invoke-virtual {v2}, Lcom/estrongs/io/archive/g;->a()J

    move-result-wide v2

    iget-object v4, p0, Lcom/estrongs/io/archive/rar/b;->b:Lcom/estrongs/io/archive/g;

    invoke-virtual {v4}, Lcom/estrongs/io/archive/g;->b()I

    move-result v4

    iget-object v5, p0, Lcom/estrongs/io/archive/rar/b;->b:Lcom/estrongs/io/archive/g;

    invoke-virtual {v5}, Lcom/estrongs/io/archive/g;->c()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/estrongs/io/a/b;->a(Ljava/lang/String;JI)V

    invoke-super {p0, p1}, Lcom/estrongs/io/archive/rar/e;->a(Ljava/io/File;)Z

    move-result v0

    return v0
.end method
