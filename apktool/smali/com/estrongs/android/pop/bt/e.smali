.class Lcom/estrongs/android/pop/bt/e;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/bt/OBEXFtpServerService;

.field private final b:Lcom/estrongs/android/pop/bt/a;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/bt/OBEXFtpServerService;Lcom/estrongs/android/pop/bt/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/bt/e;->a:Lcom/estrongs/android/pop/bt/OBEXFtpServerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/pop/bt/e;->b:Lcom/estrongs/android/pop/bt/a;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/e;->b:Lcom/estrongs/android/pop/bt/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/a;->b()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/e;->b:Lcom/estrongs/android/pop/bt/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/a;->c()V

    return-void
.end method

.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/e;->b:Lcom/estrongs/android/pop/bt/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/a;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
