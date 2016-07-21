.class Lcom/estrongs/android/view/dk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/al;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/estrongs/android/view/di;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/di;Lcom/estrongs/fs/b/al;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/dk;->d:Lcom/estrongs/android/view/di;

    iput-object p2, p0, Lcom/estrongs/android/view/dk;->a:Lcom/estrongs/fs/b/al;

    iput p3, p0, Lcom/estrongs/android/view/dk;->b:I

    iput-object p4, p0, Lcom/estrongs/android/view/dk;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/view/dk;->d:Lcom/estrongs/android/view/di;

    iget-object v0, v0, Lcom/estrongs/android/view/di;->b:Lcom/estrongs/android/view/cr;

    iget-object v1, p0, Lcom/estrongs/android/view/dk;->a:Lcom/estrongs/fs/b/al;

    iget v2, p0, Lcom/estrongs/android/view/dk;->b:I

    iget-object v3, p0, Lcom/estrongs/android/view/dk;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/android/view/cr;Lcom/estrongs/fs/b/al;ILjava/lang/String;)V

    return-void
.end method
