.class Lcom/estrongs/android/widget/g;
.super Lcom/estrongs/fs/v;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/g;->a:Lcom/estrongs/android/widget/f;

    invoke-direct {p0}, Lcom/estrongs/fs/v;-><init>()V

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

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->a(Lcom/estrongs/android/widget/f;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->a:Lcom/estrongs/android/widget/f;

    iget-object v0, v0, Lcom/estrongs/android/widget/f;->c:Ljava/util/List;

    return-object v0
.end method
