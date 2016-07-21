.class public Lcom/estrongs/a/a/f;
.super Lcom/estrongs/a/a/d;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/a/a/d;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/a/a/f;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/a/a/f;->b:Z

    const/4 v0, 0x7

    iput v0, p0, Lcom/estrongs/a/a/f;->h:I

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lt v0, v3, :cond_2

    aget-object v0, p1, v1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/a/a/f;->a:Ljava/lang/String;

    :cond_0
    aget-object v0, p1, v2

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/a/a/f;->b:Z

    :cond_1
    const/4 v0, 0x2

    aget-object v0, p1, v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/a/a/f;->c:Ljava/lang/String;

    :cond_2
    return-void
.end method
