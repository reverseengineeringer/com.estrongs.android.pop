.class Lcom/estrongs/android/pop/view/dj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/kr;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/h;

.field final synthetic b:Lcom/estrongs/android/pop/view/di;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/di;Lcom/estrongs/fs/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/dj;->b:Lcom/estrongs/android/pop/view/di;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/dj;->a:Lcom/estrongs/fs/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dj;->b:Lcom/estrongs/android/pop/view/di;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dj;->a:Lcom/estrongs/fs/h;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/di;->a(Lcom/estrongs/android/pop/view/di;Lcom/estrongs/fs/h;)V

    :cond_0
    return-void
.end method
