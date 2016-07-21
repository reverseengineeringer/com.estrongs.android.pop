.class Lcom/estrongs/android/scanner/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/scanner/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/v;->b:Lcom/estrongs/android/scanner/l;

    iput-object p2, p0, Lcom/estrongs/android/scanner/v;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/scanner/d/ah;->a()Lcom/estrongs/android/scanner/d/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/scanner/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/d/ah;->a(Ljava/lang/String;)V

    return-void
.end method
