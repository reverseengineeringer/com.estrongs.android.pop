.class Lcom/estrongs/android/pop/app/compress/bg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/bf;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/bf;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bg;->a:Lcom/estrongs/android/pop/app/compress/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bg;->a:Lcom/estrongs/android/pop/app/compress/bf;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/bf;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/bb;->e(Lcom/estrongs/android/pop/app/compress/bb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
