.class Lcom/estrongs/android/pop/app/if;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/if;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/estrongs/android/ui/dialog/kf;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/if;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    const-string v2, "http://update.estrongs.com/up?id=1"

    invoke-direct {v0, v1, v3, v2}, Lcom/estrongs/android/ui/dialog/kf;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/kf;->b()V

    return v3
.end method
