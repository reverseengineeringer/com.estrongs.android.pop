.class Lcom/estrongs/android/pop/utils/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/utils/s;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/s;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/t;->a:Lcom/estrongs/android/pop/utils/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/t;->a:Lcom/estrongs/android/pop/utils/s;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/s;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->N()V

    return-void
.end method
