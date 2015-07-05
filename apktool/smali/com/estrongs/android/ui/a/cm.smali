.class Lcom/estrongs/android/ui/a/cm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/cl;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/cl;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/cm;->a:Lcom/estrongs/android/ui/a/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cm;->a:Lcom/estrongs/android/ui/a/cl;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/cl;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/aa;->a(Landroid/content/Context;)V

    return-void
.end method
