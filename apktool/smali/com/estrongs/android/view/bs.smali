.class Lcom/estrongs/android/view/bs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/aj;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/estrongs/android/view/bq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/bq;Lcom/estrongs/fs/b/aj;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bs;->d:Lcom/estrongs/android/view/bq;

    iput-object p2, p0, Lcom/estrongs/android/view/bs;->a:Lcom/estrongs/fs/b/aj;

    iput p3, p0, Lcom/estrongs/android/view/bs;->b:I

    iput-object p4, p0, Lcom/estrongs/android/view/bs;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/view/bs;->d:Lcom/estrongs/android/view/bq;

    iget-object v0, v0, Lcom/estrongs/android/view/bq;->b:Lcom/estrongs/android/view/aw;

    iget-object v1, p0, Lcom/estrongs/android/view/bs;->a:Lcom/estrongs/fs/b/aj;

    iget v2, p0, Lcom/estrongs/android/view/bs;->b:I

    iget-object v3, p0, Lcom/estrongs/android/view/bs;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/android/view/aw;Lcom/estrongs/fs/b/aj;ILjava/lang/String;)V

    return-void
.end method
