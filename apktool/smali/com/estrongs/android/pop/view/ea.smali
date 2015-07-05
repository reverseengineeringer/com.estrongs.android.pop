.class Lcom/estrongs/android/pop/view/ea;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/dy;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/dy;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ea;->a:Lcom/estrongs/android/pop/view/dy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ea;->a:Lcom/estrongs/android/pop/view/dy;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/dy;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/l;->b(Landroid/content/Context;)V

    return-void
.end method
