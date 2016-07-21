.class Lcom/estrongs/android/view/df;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/df;->a:Lcom/estrongs/android/view/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/df;->a:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/adb/c;->i(Ljava/lang/String;)V

    return-void
.end method
