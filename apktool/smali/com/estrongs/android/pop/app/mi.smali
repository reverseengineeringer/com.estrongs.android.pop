.class Lcom/estrongs/android/pop/app/mi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/mh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/mh;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/mi;->a:Lcom/estrongs/android/pop/app/mh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/UninstallMonitorActivity;->a:Lcom/estrongs/android/ui/dialog/bj;

    return-void
.end method
