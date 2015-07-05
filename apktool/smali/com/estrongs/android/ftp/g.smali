.class public Lcom/estrongs/android/ftp/g;
.super Landroid/os/Binder;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ftp/ESFtpService;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ftp/ESFtpService;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ftp/g;->a:Lcom/estrongs/android/ftp/ESFtpService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/estrongs/android/ftp/ESFtpService;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/android/ftp/ESFtpService;->a(Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ftp/g;->a:Lcom/estrongs/android/ftp/ESFtpService;

    return-object v0
.end method
