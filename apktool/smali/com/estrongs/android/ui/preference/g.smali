.class Lcom/estrongs/android/ui/preference/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ftp/m;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ftp/k;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/estrongs/android/ui/preference/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/f;Lcom/estrongs/android/ftp/k;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/g;->d:Lcom/estrongs/android/ui/preference/f;

    iput-object p2, p0, Lcom/estrongs/android/ui/preference/g;->a:Lcom/estrongs/android/ftp/k;

    iput-object p3, p0, Lcom/estrongs/android/ui/preference/g;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/ui/preference/g;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/g;->a:Lcom/estrongs/android/ftp/k;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/preference/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ftp/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/g;->a:Lcom/estrongs/android/ftp/k;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/g;->d:Lcom/estrongs/android/ui/preference/f;

    iget-object v1, v1, Lcom/estrongs/android/ui/preference/f;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ftp/k;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
