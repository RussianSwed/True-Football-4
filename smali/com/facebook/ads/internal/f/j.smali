.class public Lcom/facebook/ads/internal/f/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:I

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:I

.field public static k:Ljava/lang/String;

.field public static l:I

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Z

.field public static q:Ljava/lang/String;

.field private static r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/facebook/ads/internal/f/j;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/facebook/ads/internal/f/j;->b:Ljava/lang/String;

    sput-object v0, Lcom/facebook/ads/internal/f/j;->c:Ljava/lang/String;

    sput-object v0, Lcom/facebook/ads/internal/f/j;->d:Ljava/lang/String;

    sput-object v0, Lcom/facebook/ads/internal/f/j;->e:Ljava/lang/String;

    sput-object v0, Lcom/facebook/ads/internal/f/j;->f:Ljava/lang/String;

    const/4 v1, 0x0

    sput v1, Lcom/facebook/ads/internal/f/j;->g:I

    sput-object v0, Lcom/facebook/ads/internal/f/j;->h:Ljava/lang/String;

    sput-object v0, Lcom/facebook/ads/internal/f/j;->i:Ljava/lang/String;

    sput v1, Lcom/facebook/ads/internal/f/j;->j:I

    sput-object v0, Lcom/facebook/ads/internal/f/j;->k:Ljava/lang/String;

    sput v1, Lcom/facebook/ads/internal/f/j;->l:I

    sput-object v0, Lcom/facebook/ads/internal/f/j;->m:Ljava/lang/String;

    sput-object v0, Lcom/facebook/ads/internal/f/j;->n:Ljava/lang/String;

    sput-object v0, Lcom/facebook/ads/internal/f/j;->o:Ljava/lang/String;

    sput-boolean v1, Lcom/facebook/ads/internal/f/j;->p:Z

    sput-object v0, Lcom/facebook/ads/internal/f/j;->q:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/facebook/ads/internal/f/j;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/facebook/ads/internal/f/j;->r:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/facebook/ads/internal/f/j;->r:Z

    invoke-static {p0}, Lcom/facebook/ads/internal/f/j;->c(Landroid/content/Context;)V

    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/internal/f/j;->d(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 7

    const-string v0, "advertisingId"

    const-string v1, "attributionId"

    sget-boolean v2, Lcom/facebook/ads/internal/f/j;->r:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v2, "SDKIDFA"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v4, ""

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/facebook/ads/internal/f/j;->n:Ljava/lang/String;

    :cond_1
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v5, "limitAdTracking"

    if-eqz v3, :cond_2

    :try_start_2
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/facebook/ads/internal/f/j;->o:Ljava/lang/String;

    sget-boolean v3, Lcom/facebook/ads/internal/f/j;->p:Z

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/facebook/ads/internal/f/j;->p:Z

    sget-object v3, Lcom/facebook/ads/internal/g$c;->a:Lcom/facebook/ads/internal/g$c;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/g$c;->name()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/facebook/ads/internal/f/j;->q:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/ads/internal/util/g;->a(Landroid/content/ContentResolver;)Lcom/facebook/ads/internal/util/g$a;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_4
    const-string v6, "Error retrieving attribution id from fb4a"

    invoke-static {v4, v6}, Lcom/facebook/ads/internal/util/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/util/b;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/ads/internal/util/c;->a(Lcom/facebook/ads/internal/util/b;)V

    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_3

    iget-object v6, v4, Lcom/facebook/ads/internal/util/g$a;->a:Ljava/lang/String;

    if-eqz v6, :cond_3

    sput-object v6, Lcom/facebook/ads/internal/f/j;->n:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :try_start_5
    invoke-static {p0, v4}, Lcom/facebook/ads/internal/g;->a(Landroid/content/Context;Lcom/facebook/ads/internal/util/g$a;)Lcom/facebook/ads/internal/g;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_6
    const-string v4, "Error retrieving advertising id from Google Play Services"

    invoke-static {p0, v4}, Lcom/facebook/ads/internal/util/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/util/b;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/ads/internal/util/c;->a(Lcom/facebook/ads/internal/util/b;)V

    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/facebook/ads/internal/g;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3}, Lcom/facebook/ads/internal/g;->b()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz p0, :cond_4

    sput-object p0, Lcom/facebook/ads/internal/f/j;->o:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/facebook/ads/internal/f/j;->p:Z

    invoke-virtual {v3}, Lcom/facebook/ads/internal/g;->c()Lcom/facebook/ads/internal/g$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/g$c;->name()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/facebook/ads/internal/f/j;->q:Ljava/lang/String;

    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v2, Lcom/facebook/ads/internal/f/j;->n:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/facebook/ads/internal/f/j;->o:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-boolean v0, Lcom/facebook/ads/internal/f/j;->p:Z

    invoke-interface {p0, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v3, Lcom/facebook/ads/internal/f/j;->d:Ljava/lang/String;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v3, Lcom/facebook/ads/internal/f/j;->f:Ljava/lang/String;

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v2, Lcom/facebook/ads/internal/f/j;->g:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v2, Lcom/facebook/ads/internal/f/j;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ltz v2, :cond_0

    sget-object v2, Lcom/facebook/ads/internal/f/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    sput-object v2, Lcom/facebook/ads/internal/f/j;->h:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/f/j;->e:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    nop

    :cond_1
    :goto_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    sput-object p0, Lcom/facebook/ads/internal/f/j;->i:Ljava/lang/String;

    :cond_2
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    sput-object p0, Lcom/facebook/ads/internal/f/j;->b:Ljava/lang/String;

    :cond_3
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_4

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object p0, Lcom/facebook/ads/internal/f/j;->c:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    sput v0, Lcom/facebook/ads/internal/f/j;->j:I

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/f/j;->k:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    sput v0, Lcom/facebook/ads/internal/f/j;->l:I

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/facebook/ads/internal/f/j;->m:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
