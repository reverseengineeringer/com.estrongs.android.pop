.class Lcom/estrongs/fs/impl/n/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/estrongs/fs/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/fs/impl/n/b;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/impl/n/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/n/c;->a:Lcom/estrongs/fs/impl/n/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)I
    .locals 2

    check-cast p2, Lcom/estrongs/fs/impl/n/a;

    iget v0, p2, Lcom/estrongs/fs/impl/n/a;->a:I

    check-cast p1, Lcom/estrongs/fs/impl/n/a;

    iget v1, p1, Lcom/estrongs/fs/impl/n/a;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/estrongs/fs/h;

    check-cast p2, Lcom/estrongs/fs/h;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/fs/impl/n/c;->a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)I

    move-result v0

    return v0
.end method
