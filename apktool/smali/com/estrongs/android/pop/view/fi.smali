.class Lcom/estrongs/android/pop/view/fi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/fh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/fh;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/fi;->a:Lcom/estrongs/android/pop/view/fh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/pcs/j;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/fi;->a:Lcom/estrongs/android/pop/view/fh;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/fh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/j;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/estrongs/android/pop/view/fj;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/fj;-><init>(Lcom/estrongs/android/pop/view/fi;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/j;->a(Lcom/estrongs/android/ui/pcs/n;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/j;->show()V

    return-void
.end method
