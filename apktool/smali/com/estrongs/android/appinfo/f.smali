.class Lcom/estrongs/android/appinfo/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/appinfo/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/appinfo/e;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/appinfo/f;->b:Lcom/estrongs/android/appinfo/e;

    iput-object p2, p0, Lcom/estrongs/android/appinfo/f;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/appinfo/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/appinfo/o;

    invoke-virtual {v0}, Lcom/estrongs/android/appinfo/o;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method
