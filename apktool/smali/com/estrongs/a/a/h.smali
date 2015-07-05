.class public Lcom/estrongs/a/a/h;
.super Lcom/estrongs/a/a/d;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Lcom/estrongs/fs/h;

.field public d:Lcom/estrongs/fs/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/estrongs/a/a/d;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/a/a/h;->b:Z

    iput v1, p0, Lcom/estrongs/a/a/h;->g:I

    iput v1, p0, Lcom/estrongs/a/a/h;->h:I

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x3

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    array-length v0, p1

    if-lez v0, :cond_3

    aget-object v0, p1, v3

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/a/a/h;->a:Ljava/lang/String;

    :cond_0
    array-length v0, p1

    if-le v0, v1, :cond_1

    aget-object v0, p1, v1

    if-eqz v0, :cond_1

    aget-object v0, p1, v1

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/a/a/h;->b:Z

    :cond_1
    array-length v0, p1

    if-le v0, v2, :cond_3

    aget-object v0, p1, v4

    instance-of v0, v0, Lcom/estrongs/fs/h;

    if-eqz v0, :cond_2

    aget-object v0, p1, v4

    check-cast v0, Lcom/estrongs/fs/h;

    iput-object v0, p0, Lcom/estrongs/a/a/h;->c:Lcom/estrongs/fs/h;

    :cond_2
    aget-object v0, p1, v2

    instance-of v0, v0, Lcom/estrongs/fs/h;

    if-eqz v0, :cond_3

    aget-object v0, p1, v2

    check-cast v0, Lcom/estrongs/fs/h;

    iput-object v0, p0, Lcom/estrongs/a/a/h;->d:Lcom/estrongs/fs/h;

    :cond_3
    return-void
.end method
