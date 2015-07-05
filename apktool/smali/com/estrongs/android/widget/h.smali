.class Lcom/estrongs/android/widget/h;
.super Lcom/estrongs/fs/l;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/h;->a:Lcom/estrongs/android/widget/g;

    invoke-direct {p0}, Lcom/estrongs/fs/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/h;",
            "Lcom/estrongs/fs/i;",
            "Lcom/estrongs/android/util/TypedMap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/widget/h;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->a(Lcom/estrongs/android/widget/g;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/h;->a:Lcom/estrongs/android/widget/g;

    iget-object v0, v0, Lcom/estrongs/android/widget/g;->c:Ljava/util/List;

    return-object v0
.end method
