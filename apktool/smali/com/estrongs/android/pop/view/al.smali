.class Lcom/estrongs/android/pop/view/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ak;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/al;->a:Lcom/estrongs/android/pop/view/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/al;->a:Lcom/estrongs/android/pop/view/ak;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/ak;->a:Lcom/estrongs/android/pop/view/aj;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a;->c(Landroid/content/Context;)V

    return-void
.end method
