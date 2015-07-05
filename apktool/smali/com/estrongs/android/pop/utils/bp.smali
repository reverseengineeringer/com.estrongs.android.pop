.class Lcom/estrongs/android/pop/utils/bp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/aw;

.field final synthetic b:Lcom/estrongs/android/pop/esclasses/ESActivity;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/estrongs/android/pop/utils/bn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/bn;Lcom/estrongs/android/view/aw;Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/bp;->e:Lcom/estrongs/android/pop/utils/bn;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/bp;->a:Lcom/estrongs/android/view/aw;

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/bp;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iput-object p4, p0, Lcom/estrongs/android/pop/utils/bp;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/estrongs/android/pop/utils/bp;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 2

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bp;->a:Lcom/estrongs/android/view/aw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bp;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    new-instance v1, Lcom/estrongs/android/pop/utils/bq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/utils/bq;-><init>(Lcom/estrongs/android/pop/utils/bp;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
