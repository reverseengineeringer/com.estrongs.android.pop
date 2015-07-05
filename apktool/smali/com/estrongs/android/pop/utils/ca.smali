.class Lcom/estrongs/android/pop/utils/ca;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field final synthetic b:Lcom/estrongs/android/pop/utils/by;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/by;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/ca;->b:Lcom/estrongs/android/pop/utils/by;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/ca;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ca;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/l;->b(Landroid/content/Context;)V

    return-void
.end method
