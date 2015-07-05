.class Lcom/estrongs/android/pop/app/compress/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/x;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/x;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/z;->a:Lcom/estrongs/android/pop/app/compress/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/z;->a:Lcom/estrongs/android/pop/app/compress/x;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/x;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->h(Lcom/estrongs/android/pop/app/compress/l;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
