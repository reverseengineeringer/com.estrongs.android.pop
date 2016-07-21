.class Lcom/estrongs/android/ui/controller/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;

.field final synthetic b:Lcom/estrongs/android/ui/controller/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/a;Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/e;->b:Lcom/estrongs/android/ui/controller/a;

    iput-object p2, p0, Lcom/estrongs/android/ui/controller/e;->a:Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/e;->a:Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;->fullScroll(I)Z

    return-void
.end method
