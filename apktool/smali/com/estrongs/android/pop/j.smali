.class Lcom/estrongs/android/pop/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/pop/i;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/i;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/j;->b:Lcom/estrongs/android/pop/i;

    iput-object p2, p0, Lcom/estrongs/android/pop/j;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/j;->b:Lcom/estrongs/android/pop/i;

    iget-object v0, v0, Lcom/estrongs/android/pop/i;->a:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g(Ljava/lang/String;)Lcom/estrongs/android/view/cr;

    return-void
.end method
