.class Lcom/estrongs/android/pop/view/by;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/bw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/bw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/by;->a:Lcom/estrongs/android/pop/view/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/by;->a:Lcom/estrongs/android/pop/view/bw;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bw;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/m;->b(Landroid/content/Context;)V

    return-void
.end method
