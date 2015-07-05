.class Lcom/estrongs/android/view/br;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/bq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/bq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bq;

    iget-object v0, v0, Lcom/estrongs/android/view/bq;->b:Lcom/estrongs/android/view/aw;

    invoke-static {v0}, Lcom/estrongs/android/view/aw;->b(Lcom/estrongs/android/view/aw;)V

    return-void
.end method
