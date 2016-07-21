.class Lcom/estrongs/android/pop/utils/bx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cr;

.field final synthetic b:Lcom/estrongs/android/pop/app/d/a;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/app/Activity;

.field final synthetic f:Lcom/estrongs/android/pop/utils/bv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/bv;Lcom/estrongs/android/view/cr;Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/bx;->f:Lcom/estrongs/android/pop/utils/bv;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/bx;->a:Lcom/estrongs/android/view/cr;

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/bx;->b:Lcom/estrongs/android/pop/app/d/a;

    iput-object p4, p0, Lcom/estrongs/android/pop/utils/bx;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/estrongs/android/pop/utils/bx;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/estrongs/android/pop/utils/bx;->e:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 2

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bx;->a:Lcom/estrongs/android/view/cr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bx;->b:Lcom/estrongs/android/pop/app/d/a;

    new-instance v1, Lcom/estrongs/android/pop/utils/by;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/utils/by;-><init>(Lcom/estrongs/android/pop/utils/bx;)V

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/d/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
