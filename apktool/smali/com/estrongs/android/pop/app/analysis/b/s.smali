.class Lcom/estrongs/android/pop/app/analysis/b/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/b/q;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/b/q;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/b/s;->a:Lcom/estrongs/android/pop/app/analysis/b/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/s;->a:Lcom/estrongs/android/pop/app/analysis/b/q;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/b/q;->b(Lcom/estrongs/android/pop/app/analysis/b/q;)Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;->fullScroll(I)Z

    return-void
.end method
