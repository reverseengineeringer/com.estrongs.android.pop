.class Lcom/estrongs/android/pop/app/compress/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/l;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/ac;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ac;->a:Lcom/estrongs/android/pop/app/compress/l;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ac;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->g(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/android/pop/app/compress/be;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/compress/be;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/compress/l;->a(Lcom/estrongs/android/pop/app/compress/l;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ac;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->a(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/a/a/a;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ac;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->a(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ac;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->g(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/android/pop/app/compress/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/be;->dismiss()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
