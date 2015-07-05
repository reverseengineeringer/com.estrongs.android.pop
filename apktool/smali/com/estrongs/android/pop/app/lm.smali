.class Lcom/estrongs/android/pop/app/lm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/StartServiceReceiver;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/StartServiceReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/lm;->a:Lcom/estrongs/android/pop/app/StartServiceReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->T()Landroid/net/LocalSocket;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/nativetool/c;->a(Landroid/net/LocalSocket;)Z

    return-void
.end method
