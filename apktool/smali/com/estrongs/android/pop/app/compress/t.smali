.class Lcom/estrongs/android/pop/app/compress/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/o;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/o;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/t;->a:Lcom/estrongs/android/pop/app/compress/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/t;->a:Lcom/estrongs/android/pop/app/compress/o;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/o;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->l(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    return-void
.end method
