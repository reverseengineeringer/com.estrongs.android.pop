.class Lcom/estrongs/android/pop/view/ej;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ei;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ei;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ej;->a:Lcom/estrongs/android/pop/view/ei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/pcs/l;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ej;->a:Lcom/estrongs/android/pop/view/ei;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/ei;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/l;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/estrongs/android/pop/view/ek;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/ek;-><init>(Lcom/estrongs/android/pop/view/ej;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/l;->a(Lcom/estrongs/android/ui/pcs/q;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/l;->show()V

    return-void
.end method
