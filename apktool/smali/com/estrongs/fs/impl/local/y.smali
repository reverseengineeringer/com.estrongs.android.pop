.class Lcom/estrongs/fs/impl/local/y;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/Map;

.field public c:Z

.field public d:Z

.field public e:Ljava/util/Map;

.field public f:Z

.field public g:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/estrongs/fs/c;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field final synthetic j:Lcom/estrongs/fs/impl/local/w;


# direct methods
.method private constructor <init>(Lcom/estrongs/fs/impl/local/w;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/fs/impl/local/y;->j:Lcom/estrongs/fs/impl/local/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/local/y;->i:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/fs/impl/local/w;Lcom/estrongs/fs/impl/local/x;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/fs/impl/local/y;-><init>(Lcom/estrongs/fs/impl/local/w;)V

    return-void
.end method
