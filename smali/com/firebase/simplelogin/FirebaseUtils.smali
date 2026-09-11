.class Lcom/firebase/simplelogin/FirebaseUtils;
.super Ljava/lang/Object;
.source "FirebaseUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static errorFromFirebaseError(Lcom/firebase/client/FirebaseError;)Lcom/firebase/simplelogin/enums/Error;
    .locals 1

    .line 95
    sget-object v0, Lcom/firebase/simplelogin/enums/Error;->Unknown:Lcom/firebase/simplelogin/enums/Error;

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/firebase/client/FirebaseError;->getCode()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 126
    sget-object v0, Lcom/firebase/simplelogin/enums/Error;->Unknown:Lcom/firebase/simplelogin/enums/Error;

    goto :goto_0

    .line 99
    :pswitch_0
    sget-object v0, Lcom/firebase/simplelogin/enums/Error;->DataStale:Lcom/firebase/simplelogin/enums/Error;

    goto :goto_0

    .line 102
    :pswitch_1
    sget-object v0, Lcom/firebase/simplelogin/enums/Error;->OperationFailed:Lcom/firebase/simplelogin/enums/Error;

    goto :goto_0

    .line 105
    :pswitch_2
    sget-object v0, Lcom/firebase/simplelogin/enums/Error;->PermissionDenied:Lcom/firebase/simplelogin/enums/Error;

    goto :goto_0

    .line 108
    :pswitch_3
    sget-object v0, Lcom/firebase/simplelogin/enums/Error;->Disconnected:Lcom/firebase/simplelogin/enums/Error;

    goto :goto_0

    .line 111
    :pswitch_4
    sget-object v0, Lcom/firebase/simplelogin/enums/Error;->Preempted:Lcom/firebase/simplelogin/enums/Error;

    goto :goto_0

    .line 114
    :pswitch_5
    sget-object v0, Lcom/firebase/simplelogin/enums/Error;->ExpiredToken:Lcom/firebase/simplelogin/enums/Error;

    goto :goto_0

    .line 117
    :pswitch_6
    sget-object v0, Lcom/firebase/simplelogin/enums/Error;->InvalidToken:Lcom/firebase/simplelogin/enums/Error;

    goto :goto_0

    .line 120
    :pswitch_7
    sget-object v0, Lcom/firebase/simplelogin/enums/Error;->MaxRetries:Lcom/firebase/simplelogin/enums/Error;

    goto :goto_0

    .line 123
    :pswitch_8
    sget-object v0, Lcom/firebase/simplelogin/enums/Error;->OverriddenBySet:Lcom/firebase/simplelogin/enums/Error;

    :cond_0
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static errorFromResponse(Lorg/json/JSONObject;)Lcom/firebase/simplelogin/enums/Error;
    .locals 2

    .line 57
    sget-object v0, Lcom/firebase/simplelogin/enums/Error;->Unknown:Lcom/firebase/simplelogin/enums/Error;

    if-eqz p0, :cond_7

    :try_start_0
    const-string v1, "code"

    .line 60
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    const-string v1, "190"

    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    sget-object p0, Lcom/firebase/simplelogin/enums/Error;->BadSystemToken:Lcom/firebase/simplelogin/enums/Error;

    :goto_0
    move-object v0, p0

    goto :goto_1

    :cond_0
    const-string v1, "INVALID_USER"

    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    sget-object p0, Lcom/firebase/simplelogin/enums/Error;->UserDoesNotExist:Lcom/firebase/simplelogin/enums/Error;

    goto :goto_0

    :cond_1
    const-string v1, "INVALID_PASSWORD"

    .line 68
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    sget-object p0, Lcom/firebase/simplelogin/enums/Error;->InvalidPassword:Lcom/firebase/simplelogin/enums/Error;

    goto :goto_0

    :cond_2
    const-string v1, "NO_ACCESS"

    .line 71
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    sget-object p0, Lcom/firebase/simplelogin/enums/Error;->AccessNotGranted:Lcom/firebase/simplelogin/enums/Error;

    goto :goto_0

    :cond_3
    const-string v1, "NO_ACCOUNT"

    .line 74
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 75
    sget-object p0, Lcom/firebase/simplelogin/enums/Error;->AccountNotFound:Lcom/firebase/simplelogin/enums/Error;

    goto :goto_0

    :cond_4
    const-string v1, "AUTHENTICATION_DISABLED"

    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 78
    sget-object p0, Lcom/firebase/simplelogin/enums/Error;->AuthenticationProviderNotEnabled:Lcom/firebase/simplelogin/enums/Error;

    goto :goto_0

    :cond_5
    const-string v1, "INVALID_EMAIL"

    .line 80
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 81
    sget-object p0, Lcom/firebase/simplelogin/enums/Error;->InvalidEmail:Lcom/firebase/simplelogin/enums/Error;

    goto :goto_0

    :cond_6
    const-string v1, "EMAIL_TAKEN"

    .line 83
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 84
    sget-object p0, Lcom/firebase/simplelogin/enums/Error;->EmailTaken:Lcom/firebase/simplelogin/enums/Error;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_7
    :goto_1
    return-object v0
.end method

.method private static fromJson(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 159
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 163
    check-cast p0, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/firebase/simplelogin/FirebaseUtils;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 165
    :cond_1
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    .line 166
    check-cast p0, Lorg/json/JSONArray;

    invoke-static {p0}, Lcom/firebase/simplelogin/FirebaseUtils;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static namespaceFromRef(Lcom/firebase/client/Firebase;)Ljava/lang/String;
    .locals 5

    const-string v0, "Invalid Firebase reference: "

    .line 24
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/firebase/client/Firebase;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .line 30
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 31
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 32
    array-length v3, v1

    if-le v3, v4, :cond_0

    const/4 v2, 0x0

    .line 33
    aget-object v2, v1, v2

    :cond_0
    if-eqz v2, :cond_1

    .line 37
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v4, :cond_1

    return-object v2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    .line 27
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static providerForString(Ljava/lang/String;)Lcom/firebase/simplelogin/enums/Provider;
    .locals 0

    if-eqz p0, :cond_0

    .line 45
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/firebase/simplelogin/enums/Provider;->valueOf(Ljava/lang/String;)Lcom/firebase/simplelogin/enums/Provider;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 48
    :catch_0
    sget-object p0, Lcom/firebase/simplelogin/enums/Provider;->INVALID:Lcom/firebase/simplelogin/enums/Provider;

    return-object p0

    .line 52
    :cond_0
    sget-object p0, Lcom/firebase/simplelogin/enums/Provider;->INVALID:Lcom/firebase/simplelogin/enums/Provider;

    return-object p0
.end method

.method public static toList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 151
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 152
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/firebase/simplelogin/FirebaseUtils;->fromJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    .line 138
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 139
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/firebase/simplelogin/FirebaseUtils;->fromJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
