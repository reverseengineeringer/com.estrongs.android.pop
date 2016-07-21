.class Lcom/estrongs/android/ui/dialog/jv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/jh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/jh;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/jv;->b:Lcom/estrongs/android/ui/dialog/jh;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/jv;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jv;->b:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jv;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->b(Lcom/estrongs/android/ui/dialog/jh;Ljava/lang/String;)V

    return-void
.end method
