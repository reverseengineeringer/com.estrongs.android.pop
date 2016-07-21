.class Lcom/estrongs/android/pop/view/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/m;->a:Lcom/estrongs/android/pop/view/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/m;->a:Lcom/estrongs/android/pop/view/h;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/h;->a:Lcom/estrongs/android/pop/view/g;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/g;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/a;->a(Landroid/app/Activity;)V

    return-void
.end method
