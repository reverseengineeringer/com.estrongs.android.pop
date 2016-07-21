.class Lcom/estrongs/fs/impl/i/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/i;


# instance fields
.field final synthetic a:[Lcom/estrongs/android/pop/utils/aj;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic d:Lcom/estrongs/fs/impl/i/a;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/impl/i/a;[Lcom/estrongs/android/pop/utils/aj;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/i/b;->d:Lcom/estrongs/fs/impl/i/a;

    iput-object p2, p0, Lcom/estrongs/fs/impl/i/b;->a:[Lcom/estrongs/android/pop/utils/aj;

    iput-object p3, p0, Lcom/estrongs/fs/impl/i/b;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/h;)Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/estrongs/fs/impl/i/b;->a:[Lcom/estrongs/android/pop/utils/aj;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/fs/impl/i/b;->b:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
