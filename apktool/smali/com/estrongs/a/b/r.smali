.class public Lcom/estrongs/a/b/r;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field c:I

.field private d:Lcom/estrongs/a/b/r;

.field private e:Lcom/estrongs/a/b/r;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/a/b/r;->d:Lcom/estrongs/a/b/r;

    iput-object v0, p0, Lcom/estrongs/a/b/r;->e:Lcom/estrongs/a/b/r;

    iput-object v0, p0, Lcom/estrongs/a/b/r;->a:Ljava/util/List;

    iput-boolean v1, p0, Lcom/estrongs/a/b/r;->b:Z

    iput v1, p0, Lcom/estrongs/a/b/r;->c:I

    iput-object p1, p0, Lcom/estrongs/a/b/r;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/a/b/r;)Lcom/estrongs/a/b/r;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/a/b/r;->e:Lcom/estrongs/a/b/r;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/a/b/r;Lcom/estrongs/a/b/r;)Lcom/estrongs/a/b/r;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/a/b/r;->d:Lcom/estrongs/a/b/r;

    return-object p1
.end method

.method static synthetic b(Lcom/estrongs/a/b/r;Lcom/estrongs/a/b/r;)Lcom/estrongs/a/b/r;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/a/b/r;->e:Lcom/estrongs/a/b/r;

    return-object p1
.end method
