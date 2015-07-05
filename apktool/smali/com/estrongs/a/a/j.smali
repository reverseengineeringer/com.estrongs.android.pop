.class public Lcom/estrongs/a/a/j;
.super Lcom/estrongs/a/a/d;


# instance fields
.field public a:Landroid/net/Uri;

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a/d;-><init>()V

    iput-object v1, p0, Lcom/estrongs/a/a/j;->a:Landroid/net/Uri;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/a/a/j;->b:Z

    iput-object v1, p0, Lcom/estrongs/a/a/j;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/a/a/j;->d:Ljava/lang/String;

    const/16 v0, 0x9

    iput v0, p0, Lcom/estrongs/a/a/j;->h:I

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lt v0, v1, :cond_2

    aget-object v0, p1, v2

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/a/a/j;->c:Ljava/lang/String;

    :cond_0
    aget-object v0, p1, v3

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/a/a/j;->d:Ljava/lang/String;

    :cond_1
    aget-object v0, p1, v1

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/a/a/j;->b:Z

    :cond_2
    return-void
.end method
