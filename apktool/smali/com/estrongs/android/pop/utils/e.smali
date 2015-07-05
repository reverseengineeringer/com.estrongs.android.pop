.class Lcom/estrongs/android/pop/utils/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/utils/d;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/e;->a:Lcom/estrongs/android/pop/utils/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/e;->a:Lcom/estrongs/android/pop/utils/d;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/d;->b:Lcom/estrongs/android/pop/utils/c;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/e;->a:Lcom/estrongs/android/pop/utils/d;

    iget-object v1, v1, Lcom/estrongs/android/pop/utils/d;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/c;->a(Lcom/estrongs/android/pop/utils/c;Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/e;->a:Lcom/estrongs/android/pop/utils/d;

    iget-object v1, v1, Lcom/estrongs/android/pop/utils/d;->b:Lcom/estrongs/android/pop/utils/c;

    iget-object v1, v1, Lcom/estrongs/android/pop/utils/c;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->N()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
