.class Lcom/estrongs/android/ui/preference/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/FtpServerPreference;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/FtpServerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/k;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/k;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->X()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/util/b;

    iget-object v2, p0, Lcom/estrongs/android/ui/preference/k;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    new-instance v3, Lcom/estrongs/android/ui/preference/l;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/ui/preference/l;-><init>(Lcom/estrongs/android/ui/preference/k;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/estrongs/android/util/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/android/util/d;)V

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/estrongs/android/util/b;->a:Z

    invoke-virtual {v1}, Lcom/estrongs/android/util/b;->a()V

    const/4 v0, 0x1

    return v0
.end method
