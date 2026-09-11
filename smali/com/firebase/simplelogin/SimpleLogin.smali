.class public Lcom/firebase/simplelogin/SimpleLogin;
.super Ljava/lang/Object;
.source "SimpleLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/simplelogin/SimpleLogin$FetchTask;
    }
.end annotation


# instance fields
.field private final androidContext:Landroid/content/Context;

.field private final apiHost:Ljava/lang/String;

.field private final namespace:Ljava/lang/String;

.field private final options:Lcom/firebase/simplelogin/SimpleLoginOptions;

.field private final ref:Lcom/firebase/client/Firebase;


# direct methods
.method public constructor <init>(Lcom/firebase/client/Firebase;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/firebase/simplelogin/SimpleLogin;-><init>(Lcom/firebase/client/Firebase;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/firebase/client/Firebase;Landroid/content/Context;)V
    .locals 2

    .line 115
    new-instance v0, Lcom/firebase/simplelogin/SimpleLoginOptions;

    invoke-direct {v0}, Lcom/firebase/simplelogin/SimpleLoginOptions;-><init>()V

    const-string v1, "https://auth.firebase.com"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/firebase/simplelogin/SimpleLogin;-><init>(Lcom/firebase/client/Firebase;Ljava/lang/String;Landroid/content/Context;Lcom/firebase/simplelogin/SimpleLoginOptions;)V

    return-void
.end method

.method public constructor <init>(Lcom/firebase/client/Firebase;Landroid/content/Context;Lcom/firebase/simplelogin/SimpleLoginOptions;)V
    .locals 1

    const-string v0, "https://auth.firebase.com"

    .line 127
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/firebase/simplelogin/SimpleLogin;-><init>(Lcom/firebase/client/Firebase;Ljava/lang/String;Landroid/content/Context;Lcom/firebase/simplelogin/SimpleLoginOptions;)V

    return-void
.end method

.method private constructor <init>(Lcom/firebase/client/Firebase;Ljava/lang/String;Landroid/content/Context;Lcom/firebase/simplelogin/SimpleLoginOptions;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/firebase/simplelogin/SimpleLogin;->ref:Lcom/firebase/client/Firebase;

    .line 133
    iput-object p2, p0, Lcom/firebase/simplelogin/SimpleLogin;->apiHost:Ljava/lang/String;

    .line 134
    invoke-static {p1}, Lcom/firebase/simplelogin/FirebaseUtils;->namespaceFromRef(Lcom/firebase/client/Firebase;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/simplelogin/SimpleLogin;->namespace:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lcom/firebase/simplelogin/SimpleLogin;->androidContext:Landroid/content/Context;

    .line 136
    iput-object p4, p0, Lcom/firebase/simplelogin/SimpleLogin;->options:Lcom/firebase/simplelogin/SimpleLoginOptions;

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/simplelogin/SimpleLogin;Ljava/lang/String;Lcom/firebase/simplelogin/enums/Provider;Lorg/json/JSONObject;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/firebase/simplelogin/SimpleLogin;->attemptAuthWithToken(Ljava/lang/String;Lcom/firebase/simplelogin/enums/Provider;Lorg/json/JSONObject;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V

    return-void
.end method

.method static synthetic access$100(Lcom/firebase/simplelogin/SimpleLogin;Ljava/lang/String;Lcom/firebase/simplelogin/enums/Provider;Lorg/json/JSONObject;)Lcom/firebase/simplelogin/User;
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/firebase/simplelogin/SimpleLogin;->saveSession(Ljava/lang/String;Lcom/firebase/simplelogin/enums/Provider;Lorg/json/JSONObject;)Lcom/firebase/simplelogin/User;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/firebase/simplelogin/SimpleLogin;)Lcom/firebase/client/Firebase;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/firebase/simplelogin/SimpleLogin;->ref:Lcom/firebase/client/Firebase;

    return-object p0
.end method

.method static synthetic access$300(Lcom/firebase/simplelogin/SimpleLogin;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/firebase/simplelogin/SimpleLogin;->clearCredentials()V

    return-void
.end method

.method private attemptAuthWithData(Lorg/json/JSONObject;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V
    .locals 4

    const-string v0, "userData"

    const-string v1, "token"

    const/4 v2, 0x0

    .line 185
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 186
    :goto_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    const-string v0, "provider"

    .line 188
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/simplelogin/FirebaseUtils;->providerForString(Ljava/lang/String;)Lcom/firebase/simplelogin/enums/Provider;

    move-result-object v0

    .line 189
    sget-object v3, Lcom/firebase/simplelogin/enums/Provider;->INVALID:Lcom/firebase/simplelogin/enums/Provider;

    if-eq v0, v3, :cond_2

    .line 191
    invoke-direct {p0, v1, v0, p1, p2}, Lcom/firebase/simplelogin/SimpleLogin;->attemptAuthWithToken(Ljava/lang/String;Lcom/firebase/simplelogin/enums/Provider;Lorg/json/JSONObject;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V

    goto :goto_2

    .line 194
    :cond_2
    invoke-direct {p0}, Lcom/firebase/simplelogin/SimpleLogin;->clearCredentials()V

    .line 195
    invoke-interface {p2, v2, v2}, Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;->authenticated(Lcom/firebase/simplelogin/enums/Error;Lcom/firebase/simplelogin/User;)V

    goto :goto_2

    .line 199
    :cond_3
    invoke-static {v2}, Lcom/firebase/simplelogin/FirebaseUtils;->errorFromResponse(Lorg/json/JSONObject;)Lcom/firebase/simplelogin/enums/Error;

    move-result-object p1

    invoke-interface {p2, p1, v2}, Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;->authenticated(Lcom/firebase/simplelogin/enums/Error;Lcom/firebase/simplelogin/User;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 203
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    invoke-static {v2}, Lcom/firebase/simplelogin/FirebaseUtils;->errorFromResponse(Lorg/json/JSONObject;)Lcom/firebase/simplelogin/enums/Error;

    move-result-object p1

    invoke-interface {p2, p1, v2}, Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;->authenticated(Lcom/firebase/simplelogin/enums/Error;Lcom/firebase/simplelogin/User;)V

    :goto_2
    return-void
.end method

.method private attemptAuthWithToken(Ljava/lang/String;Lcom/firebase/simplelogin/enums/Provider;Lorg/json/JSONObject;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V
    .locals 8

    .line 317
    iget-object v0, p0, Lcom/firebase/simplelogin/SimpleLogin;->ref:Lcom/firebase/client/Firebase;

    new-instance v7, Lcom/firebase/simplelogin/SimpleLogin$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/firebase/simplelogin/SimpleLogin$3;-><init>(Lcom/firebase/simplelogin/SimpleLogin;Ljava/lang/String;Lcom/firebase/simplelogin/enums/Provider;Lorg/json/JSONObject;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V

    invoke-virtual {v0, p1, v7}, Lcom/firebase/client/Firebase;->auth(Ljava/lang/String;Lcom/firebase/client/Firebase$AuthListener;)V

    return-void
.end method

.method private clearCredentials()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/firebase/simplelogin/SimpleLogin;->androidContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "com.firebase.simplelogin.sharedpref"

    .line 210
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 211
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 212
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 213
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.2.0"

    return-object v0
.end method

.method private handleInvalidEmail(Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V
    .locals 2

    .line 587
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/firebase/simplelogin/SimpleLogin$11;

    invoke-direct {v1, p0, p1}, Lcom/firebase/simplelogin/SimpleLogin$11;-><init>(Lcom/firebase/simplelogin/SimpleLogin;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleInvalidInvalidToken(Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V
    .locals 2

    .line 607
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/firebase/simplelogin/SimpleLogin$13;

    invoke-direct {v1, p0, p1}, Lcom/firebase/simplelogin/SimpleLogin$13;-><init>(Lcom/firebase/simplelogin/SimpleLogin;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleInvalidPassword(Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V
    .locals 2

    .line 597
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/firebase/simplelogin/SimpleLogin$12;

    invoke-direct {v1, p0, p1}, Lcom/firebase/simplelogin/SimpleLogin$12;-><init>(Lcom/firebase/simplelogin/SimpleLogin;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private makeRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/firebase/simplelogin/RequestHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/firebase/simplelogin/RequestHandler;",
            ")V"
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lcom/firebase/simplelogin/SimpleLogin;->apiHost:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 618
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 619
    iget-object p1, p0, Lcom/firebase/simplelogin/SimpleLogin;->namespace:Ljava/lang/String;

    const-string v1, "firebase"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p1, "mobile"

    const-string v1, "android"

    .line 620
    invoke-virtual {v0, p1, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p1, "transport"

    const-string v1, "json"

    .line 621
    invoke-virtual {v0, p1, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 623
    iget-object p1, p0, Lcom/firebase/simplelogin/SimpleLogin;->options:Lcom/firebase/simplelogin/SimpleLoginOptions;

    invoke-virtual {p1}, Lcom/firebase/simplelogin/SimpleLoginOptions;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "debug"

    const-string v1, "1"

    .line 624
    invoke-virtual {v0, p1, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    if-eqz p2, :cond_2

    .line 628
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    if-eqz p2, :cond_1

    .line 630
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 634
    :cond_2
    new-instance p1, Lcom/firebase/simplelogin/SimpleLogin$FetchTask;

    invoke-direct {p1, p0, p3}, Lcom/firebase/simplelogin/SimpleLogin$FetchTask;-><init>(Lcom/firebase/simplelogin/SimpleLogin;Lcom/firebase/simplelogin/RequestHandler;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    invoke-virtual {p1, p2}, Lcom/firebase/simplelogin/SimpleLogin$FetchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private saveSession(Ljava/lang/String;Lcom/firebase/simplelogin/enums/Provider;Lorg/json/JSONObject;)Lcom/firebase/simplelogin/User;
    .locals 4

    const-string v0, "email"

    const-string v1, "id"

    .line 357
    invoke-direct {p0}, Lcom/firebase/simplelogin/SimpleLogin;->clearCredentials()V

    const/4 v2, 0x0

    .line 360
    :try_start_0
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_3

    .line 362
    sget-object v3, Lcom/firebase/simplelogin/enums/Provider;->PASSWORD:Lcom/firebase/simplelogin/enums/Provider;

    if-ne p2, v3, :cond_2

    .line 363
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v2

    :goto_1
    if-eqz p2, :cond_3

    .line 365
    new-instance v0, Lcom/firebase/simplelogin/User;

    invoke-direct {v0, v1, p1, p2}, Lcom/firebase/simplelogin/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v2, v0

    goto :goto_3

    .line 369
    :cond_2
    new-instance v0, Lcom/firebase/simplelogin/User;

    invoke-static {p3}, Lcom/firebase/simplelogin/FirebaseUtils;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, p2, p1, v3}, Lcom/firebase/simplelogin/User;-><init>(Ljava/lang/String;Lcom/firebase/simplelogin/enums/Provider;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 376
    :cond_3
    :goto_3
    iget-object p2, p0, Lcom/firebase/simplelogin/SimpleLogin;->androidContext:Landroid/content/Context;

    if-eqz p2, :cond_4

    const/4 v0, 0x0

    const-string v1, "com.firebase.simplelogin.sharedpref"

    .line 377
    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 378
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 380
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "token"

    .line 381
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "userData"

    .line 382
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "jsonTokenData"

    .line 383
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 389
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    throw p1

    :catch_1
    :goto_4
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    return-object v2
.end method


# virtual methods
.method public changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/firebase/simplelogin/SimpleLoginCompletionHandler;)V
    .locals 2

    .line 509
    new-instance v0, Lcom/firebase/simplelogin/SimpleLogin$7;

    invoke-direct {v0, p0, p4}, Lcom/firebase/simplelogin/SimpleLogin$7;-><init>(Lcom/firebase/simplelogin/SimpleLogin;Lcom/firebase/simplelogin/SimpleLoginCompletionHandler;)V

    .line 515
    invoke-static {p1}, Lcom/firebase/simplelogin/Validation;->isValidEmail(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 516
    invoke-direct {p0, v0}, Lcom/firebase/simplelogin/SimpleLogin;->handleInvalidEmail(Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V

    goto :goto_0

    .line 518
    :cond_0
    invoke-static {p3}, Lcom/firebase/simplelogin/Validation;->isValidPassword(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 519
    invoke-direct {p0, v0}, Lcom/firebase/simplelogin/SimpleLogin;->handleInvalidPassword(Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V

    goto :goto_0

    .line 522
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "email"

    .line 523
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "oldPassword"

    .line 524
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "newPassword"

    .line 525
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    new-instance p1, Lcom/firebase/simplelogin/SimpleLogin$8;

    invoke-direct {p1, p0, p4}, Lcom/firebase/simplelogin/SimpleLogin$8;-><init>(Lcom/firebase/simplelogin/SimpleLogin;Lcom/firebase/simplelogin/SimpleLoginCompletionHandler;)V

    const-string p2, "/auth/firebase/update"

    invoke-direct {p0, p2, v0, p1}, Lcom/firebase/simplelogin/SimpleLogin;->makeRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/firebase/simplelogin/RequestHandler;)V

    :goto_0
    return-void
.end method

.method public checkAuthStatus(Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/firebase/simplelogin/SimpleLogin;->androidContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    const-string v3, "com.firebase.simplelogin.sharedpref"

    .line 163
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "jsonTokenData"

    .line 164
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0, v2, p1}, Lcom/firebase/simplelogin/SimpleLogin;->attemptAuthWithData(Lorg/json/JSONObject;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    invoke-interface {p1, v1, v1}, Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;->authenticated(Lcom/firebase/simplelogin/enums/Error;Lcom/firebase/simplelogin/User;)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-interface {p1, v1, v1}, Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;->authenticated(Lcom/firebase/simplelogin/enums/Error;Lcom/firebase/simplelogin/User;)V

    goto :goto_0

    .line 179
    :cond_1
    invoke-interface {p1, v1, v1}, Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;->authenticated(Lcom/firebase/simplelogin/enums/Error;Lcom/firebase/simplelogin/User;)V

    :goto_0
    return-void
.end method

.method public createUser(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V
    .locals 2

    .line 403
    invoke-static {p1}, Lcom/firebase/simplelogin/Validation;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    invoke-direct {p0, p3}, Lcom/firebase/simplelogin/SimpleLogin;->handleInvalidEmail(Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V

    goto :goto_0

    .line 406
    :cond_0
    invoke-static {p2}, Lcom/firebase/simplelogin/Validation;->isValidPassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    invoke-direct {p0, p3}, Lcom/firebase/simplelogin/SimpleLogin;->handleInvalidPassword(Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V

    goto :goto_0

    .line 410
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "email"

    .line 411
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "password"

    .line 412
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    new-instance p1, Lcom/firebase/simplelogin/SimpleLogin$4;

    invoke-direct {p1, p0, p3}, Lcom/firebase/simplelogin/SimpleLogin$4;-><init>(Lcom/firebase/simplelogin/SimpleLogin;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V

    const-string p2, "/auth/firebase/create"

    invoke-direct {p0, p2, v0, p1}, Lcom/firebase/simplelogin/SimpleLogin;->makeRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/firebase/simplelogin/RequestHandler;)V

    :goto_0
    return-void
.end method

.method public loginAnonymously(Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V
    .locals 2

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 224
    new-instance v1, Lcom/firebase/simplelogin/SimpleLogin$1;

    invoke-direct {v1, p0, p1}, Lcom/firebase/simplelogin/SimpleLogin$1;-><init>(Lcom/firebase/simplelogin/SimpleLogin;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V

    const-string p1, "/auth/anonymous"

    invoke-direct {p0, p1, v0, v1}, Lcom/firebase/simplelogin/SimpleLogin;->makeRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/firebase/simplelogin/RequestHandler;)V

    return-void
.end method

.method public loginWithEmail(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V
    .locals 2

    .line 268
    invoke-static {p1}, Lcom/firebase/simplelogin/Validation;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    invoke-direct {p0, p3}, Lcom/firebase/simplelogin/SimpleLogin;->handleInvalidEmail(Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V

    goto :goto_0

    .line 271
    :cond_0
    invoke-static {p2}, Lcom/firebase/simplelogin/Validation;->isValidPassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    invoke-direct {p0, p3}, Lcom/firebase/simplelogin/SimpleLogin;->handleInvalidPassword(Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V

    goto :goto_0

    .line 275
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "email"

    .line 276
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "password"

    .line 277
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    new-instance p1, Lcom/firebase/simplelogin/SimpleLogin$2;

    invoke-direct {p1, p0, p3}, Lcom/firebase/simplelogin/SimpleLogin$2;-><init>(Lcom/firebase/simplelogin/SimpleLogin;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V

    const-string p2, "/auth/firebase"

    invoke-direct {p0, p2, v0, p1}, Lcom/firebase/simplelogin/SimpleLogin;->makeRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/firebase/simplelogin/RequestHandler;)V

    :goto_0
    return-void
.end method

.method public loginWithFacebook(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 650
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "access_token"

    .line 651
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    new-instance p2, Lcom/firebase/simplelogin/SimpleLogin$14;

    invoke-direct {p2, p0, p3, p1}, Lcom/firebase/simplelogin/SimpleLogin$14;-><init>(Lcom/firebase/simplelogin/SimpleLogin;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;Ljava/lang/String;)V

    const-string p1, "/auth/facebook/token"

    invoke-direct {p0, p1, v0, p2}, Lcom/firebase/simplelogin/SimpleLogin;->makeRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/firebase/simplelogin/RequestHandler;)V

    goto :goto_1

    .line 647
    :cond_1
    :goto_0
    invoke-direct {p0, p3}, Lcom/firebase/simplelogin/SimpleLogin;->handleInvalidInvalidToken(Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V

    :goto_1
    return-void
.end method

.method public loginWithTwitter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 705
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "oauth_token"

    .line 706
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "oauth_token_secret"

    .line 707
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    invoke-virtual {p3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "user_id"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    new-instance p1, Lcom/firebase/simplelogin/SimpleLogin$15;

    invoke-direct {p1, p0, p4}, Lcom/firebase/simplelogin/SimpleLogin$15;-><init>(Lcom/firebase/simplelogin/SimpleLogin;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V

    const-string p2, "/auth/twitter/token"

    invoke-direct {p0, p2, v0, p1}, Lcom/firebase/simplelogin/SimpleLogin;->makeRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/firebase/simplelogin/RequestHandler;)V

    goto :goto_1

    .line 702
    :cond_1
    :goto_0
    invoke-direct {p0, p4}, Lcom/firebase/simplelogin/SimpleLogin;->handleInvalidInvalidToken(Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V

    :goto_1
    return-void
.end method

.method public logout()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/firebase/simplelogin/SimpleLogin;->ref:Lcom/firebase/client/Firebase;

    invoke-virtual {v0}, Lcom/firebase/client/Firebase;->unauth()V

    .line 144
    invoke-direct {p0}, Lcom/firebase/simplelogin/SimpleLogin;->clearCredentials()V

    return-void
.end method

.method public removeUser(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/simplelogin/SimpleLoginCompletionHandler;)V
    .locals 2

    .line 457
    new-instance v0, Lcom/firebase/simplelogin/SimpleLogin$5;

    invoke-direct {v0, p0, p3}, Lcom/firebase/simplelogin/SimpleLogin$5;-><init>(Lcom/firebase/simplelogin/SimpleLogin;Lcom/firebase/simplelogin/SimpleLoginCompletionHandler;)V

    .line 463
    invoke-static {p1}, Lcom/firebase/simplelogin/Validation;->isValidEmail(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    invoke-direct {p0, v0}, Lcom/firebase/simplelogin/SimpleLogin;->handleInvalidEmail(Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V

    goto :goto_0

    .line 466
    :cond_0
    invoke-static {p2}, Lcom/firebase/simplelogin/Validation;->isValidPassword(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 467
    invoke-direct {p0, v0}, Lcom/firebase/simplelogin/SimpleLogin;->handleInvalidPassword(Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V

    goto :goto_0

    .line 470
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "email"

    .line 471
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "password"

    .line 472
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    new-instance p1, Lcom/firebase/simplelogin/SimpleLogin$6;

    invoke-direct {p1, p0, p3}, Lcom/firebase/simplelogin/SimpleLogin$6;-><init>(Lcom/firebase/simplelogin/SimpleLogin;Lcom/firebase/simplelogin/SimpleLoginCompletionHandler;)V

    const-string p2, "/auth/firebase/remove"

    invoke-direct {p0, p2, v0, p1}, Lcom/firebase/simplelogin/SimpleLogin;->makeRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/firebase/simplelogin/RequestHandler;)V

    :goto_0
    return-void
.end method

.method public sendPasswordResetEmail(Ljava/lang/String;Lcom/firebase/simplelogin/SimpleLoginCompletionHandler;)V
    .locals 2

    .line 547
    new-instance v0, Lcom/firebase/simplelogin/SimpleLogin$9;

    invoke-direct {v0, p0, p2}, Lcom/firebase/simplelogin/SimpleLogin$9;-><init>(Lcom/firebase/simplelogin/SimpleLogin;Lcom/firebase/simplelogin/SimpleLoginCompletionHandler;)V

    .line 553
    invoke-static {p1}, Lcom/firebase/simplelogin/Validation;->isValidEmail(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 554
    invoke-direct {p0, v0}, Lcom/firebase/simplelogin/SimpleLogin;->handleInvalidEmail(Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V

    goto :goto_0

    .line 557
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "email"

    .line 558
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    new-instance p1, Lcom/firebase/simplelogin/SimpleLogin$10;

    invoke-direct {p1, p0, p2}, Lcom/firebase/simplelogin/SimpleLogin$10;-><init>(Lcom/firebase/simplelogin/SimpleLogin;Lcom/firebase/simplelogin/SimpleLoginCompletionHandler;)V

    const-string p2, "/auth/firebase/reset_password"

    invoke-direct {p0, p2, v0, p1}, Lcom/firebase/simplelogin/SimpleLogin;->makeRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/firebase/simplelogin/RequestHandler;)V

    :goto_0
    return-void
.end method
