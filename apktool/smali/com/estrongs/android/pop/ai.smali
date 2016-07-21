.class public Lcom/estrongs/android/pop/ai;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/estrongs/android/pop/ai;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Landroid/content/SharedPreferences;

.field private d:Lcom/estrongs/android/pop/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/ai;->b:Lcom/estrongs/android/pop/ai;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/ai;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/estrongs/android/pop/ai;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/pop/ai;->a:Landroid/content/Context;

    const-string v1, "runtime"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/ai;->c:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/estrongs/android/pop/ai;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/ai;->d:Lcom/estrongs/android/pop/ad;

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/ai;->b:Lcom/estrongs/android/pop/ai;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/ai;->b:Lcom/estrongs/android/pop/ai;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/ai;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/ai;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/estrongs/android/pop/ai;->b:Lcom/estrongs/android/pop/ai;

    :cond_0
    if-eqz p0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/ai;->b:Lcom/estrongs/android/pop/ai;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/ai;->a(Landroid/content/Context;)V

    :cond_1
    sget-object v0, Lcom/estrongs/android/pop/ai;->b:Lcom/estrongs/android/pop/ai;

    return-object v0
.end method


# virtual methods
.method public A()I
    .locals 2

    const-string v0, "key_permission_notify_shown_count"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public B()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/ai;->c:Landroid/content/SharedPreferences;

    const-string v1, "apk_signature_tag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Z
    .locals 2

    const-string v0, "key_feedback_rating_bar_shown"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public D()Ljava/lang/String;
    .locals 2

    const-string v0, "key_music_player_last_play_list"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 2

    const-string v0, "key_music_player_last_play_item"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F()Z
    .locals 3

    const-string v0, "key_first_show_encrypted_dialog"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "key_first_show_encrypted_dialog"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;Z)V

    :cond_0
    return v0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/ai;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Long;)J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/ai;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    const-string v0, "rating_dailog_controll_value"

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public a(J)V
    .locals 3

    const-string v0, "cleaner_last_cleaning_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/ai;->a:Landroid/content/Context;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "email_for_encrypt"

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/ai;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    const-string v0, "rating_dialog_shown"

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public b()J
    .locals 2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/a;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    const-string v0, "key_permission_notify_shown_count"

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public b(J)V
    .locals 3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/ai;->m()J

    move-result-wide v0

    const-string v2, "cleaner_total_cleaned_size"

    add-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/ai;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "apk_signature_tag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/ai;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/ai;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Z)V
    .locals 1

    const-string v0, "analysis_snakbar_show"

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/ai;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/ai;->b()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/ai;->d:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aT()J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const-string v2, "first_launch_time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "first_launch_time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public c(J)V
    .locals 3

    const-string v0, "cleaner_last_cleaned_size"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_music_player_last_play_list"

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    const-string v0, "key_feedback_rating_bar_shown"

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public d()I
    .locals 2

    const-string v0, "user_launch_time_count"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public d(J)V
    .locals 3

    const-string v0, "ad_ignore_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_music_player_last_play_item"

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/ai;->d()I

    move-result v0

    if-lez v0, :cond_0

    const-string v1, "user_launch_time_count"

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/ai;->d:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aS()I

    move-result v0

    const-string v1, "user_launch_time_count"

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public e(J)V
    .locals 3

    const-string v0, "cleaner_last_scanned_size"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public f()V
    .locals 4

    const-string v0, "recent_launch_time1"

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v0

    const-string v2, "recent_launch_time2"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-string v2, "recent_launch_time1"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public f(J)V
    .locals 3

    const-string v0, "key_last_analysis_from_home"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public g()J
    .locals 4

    const-string v0, "recent_launch_time2"

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method

.method public g(J)V
    .locals 3

    const-string v0, "key_permission_notify_last_shown_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public h()J
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-string v2, "cleaner_last_scanning_time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    return-wide v0
.end method

.method public i()V
    .locals 2

    const-string v0, "click_home_clean_fab"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "click_home_clean_fab"

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public j()J
    .locals 4

    const-string v0, "cleaner_last_cleaning_time"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method

.method public k()I
    .locals 2

    const-string v0, "cleaner_clean_times_count"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public l()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/ai;->k()I

    move-result v0

    const-string v1, "cleaner_clean_times_count"

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public m()J
    .locals 4

    const-string v0, "cleaner_total_cleaned_size"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method

.method public n()J
    .locals 4

    const-string v0, "ad_ignore_time"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method

.method public o()I
    .locals 2

    const-string v0, "rating_dailog_controll_value"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public p()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/ai;->q()I

    move-result v0

    const-string v1, "launch_times_after_show_rating_dialog"

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public q()I
    .locals 2

    const-string v0, "launch_times_after_show_rating_dialog"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public r()V
    .locals 2

    const-string v0, "launch_times_after_show_rating_dialog"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public s()Z
    .locals 2

    const-string v0, "rating_dialog_shown"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 2

    const-string v0, "private_folder_inited"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public u()V
    .locals 2

    const-string v0, "private_folder_inited"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public v()V
    .locals 2

    const-string v0, "is_new_user"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 2

    const-string v0, "email_for_encrypt"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Z
    .locals 2

    const-string v0, "analysis_snakbar_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public y()J
    .locals 4

    const-string v0, "key_last_analysis_from_home"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method

.method public z()J
    .locals 4

    const-string v0, "key_permission_notify_last_shown_time"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method
