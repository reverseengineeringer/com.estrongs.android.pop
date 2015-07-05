.class Lcom/estrongs/android/ui/dialog/dz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/dy;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/dy;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/dz;->a:Lcom/estrongs/android/ui/dialog/dy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dz;->a:Lcom/estrongs/android/ui/dialog/dy;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/dy;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->V()V

    return-void
.end method
