.class Lcom/estrongs/io/archive/aeszip/d;
.super Lcom/estrongs/io/archive/aeszip/e;


# instance fields
.field a:Lde/a/a/a/a/b;

.field final synthetic b:Lcom/estrongs/io/archive/aeszip/a;


# direct methods
.method constructor <init>(Lcom/estrongs/io/archive/aeszip/a;JJLde/a/a/a/a/b;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/io/archive/aeszip/d;->b:Lcom/estrongs/io/archive/aeszip/a;

    invoke-direct/range {p0 .. p5}, Lcom/estrongs/io/archive/aeszip/e;-><init>(Lcom/estrongs/io/archive/aeszip/a;JJ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/d;->a:Lde/a/a/a/a/b;

    iput-object p6, p0, Lcom/estrongs/io/archive/aeszip/d;->a:Lde/a/a/a/a/b;

    return-void
.end method


# virtual methods
.method public read([BII)I
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/estrongs/io/archive/aeszip/e;->read([BII)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/d;->a:Lde/a/a/a/a/b;

    invoke-interface {v1, p1, v0}, Lde/a/a/a/a/b;->a([BI)V

    return v0
.end method
