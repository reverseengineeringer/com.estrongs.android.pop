.class Lcom/estrongs/android/pop/view/ev;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/eu;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/eu;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ev;->a:Lcom/estrongs/android/pop/view/eu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ev;->a:Lcom/estrongs/android/pop/view/eu;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/eu;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->D(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    return-void
.end method
