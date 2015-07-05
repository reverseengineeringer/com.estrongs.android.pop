.class Lcom/estrongs/android/pop/app/compress/bc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/ay;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bc;->a:Lcom/estrongs/android/pop/app/compress/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bc;->a:Lcom/estrongs/android/pop/app/compress/ay;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/aw;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b04c2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    return-void
.end method
