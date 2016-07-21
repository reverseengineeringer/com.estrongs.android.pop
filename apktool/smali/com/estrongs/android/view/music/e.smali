.class Lcom/estrongs/android/view/music/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/music/d;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/music/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/music/e;->a:Lcom/estrongs/android/view/music/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/e;->a:Lcom/estrongs/android/view/music/d;

    iget-object v0, v0, Lcom/estrongs/android/view/music/d;->b:Lcom/estrongs/android/view/music/a;

    invoke-static {v0}, Lcom/estrongs/android/view/music/a;->b(Lcom/estrongs/android/view/music/a;)V

    return-void
.end method
