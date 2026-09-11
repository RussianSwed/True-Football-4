.class Lcom/firebase/simplelogin/SimpleLogin$2;
.super Ljava/lang/Object;
.source "SimpleLogin.java"

# interfaces
.implements Lcom/firebase/simplelogin/RequestHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/simplelogin/SimpleLogin;->loginWithEmail(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/simplelogin/SimpleLogin;

.field final synthetic val$completionHandler:Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;


# direct methods
.method constructor <init>(Lcom/firebase/simplelogin/SimpleLogin;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/firebase/simplelogin/SimpleLogin$2;->this$0:Lcom/firebase/simplelogin/SimpleLogin;

    iput-object p2, p0, Lcom/firebase/simplelogin/SimpleLogin$2;->val$completionHandler:Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/firebase/simplelogin/enums/Error;Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "error"

    const-string v1, "user"

    const-string v2, "token"

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 283
    iget-object p2, p0, Lcom/firebase/simplelogin/SimpleLogin$2;->val$completionHandler:Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;

    invoke-interface {p2, p1, v3}, Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;->authenticated(Lcom/firebase/simplelogin/enums/Error;Lcom/firebase/simplelogin/User;)V

    goto :goto_3

    .line 287
    :cond_0
    :try_start_0
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    if-nez p1, :cond_3

    .line 289
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v3

    .line 290
    :goto_1
    invoke-static {p1}, Lcom/firebase/simplelogin/FirebaseUtils;->errorFromResponse(Lorg/json/JSONObject;)Lcom/firebase/simplelogin/enums/Error;

    move-result-object p1

    .line 291
    iget-object p2, p0, Lcom/firebase/simplelogin/SimpleLogin$2;->val$completionHandler:Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;

    invoke-interface {p2, p1, v3}, Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;->authenticated(Lcom/firebase/simplelogin/enums/Error;Lcom/firebase/simplelogin/User;)V

    goto :goto_3

    .line 294
    :cond_3
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_2

    :cond_4
    move-object p2, v3

    :goto_2
    if-nez p2, :cond_5

    .line 296
    invoke-static {v3}, Lcom/firebase/simplelogin/FirebaseUtils;->errorFromResponse(Lorg/json/JSONObject;)Lcom/firebase/simplelogin/enums/Error;

    move-result-object p1

    .line 297
    iget-object p2, p0, Lcom/firebase/simplelogin/SimpleLogin$2;->val$completionHandler:Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;

    invoke-interface {p2, p1, v3}, Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;->authenticated(Lcom/firebase/simplelogin/enums/Error;Lcom/firebase/simplelogin/User;)V

    goto :goto_3

    .line 300
    :cond_5
    iget-object v0, p0, Lcom/firebase/simplelogin/SimpleLogin$2;->this$0:Lcom/firebase/simplelogin/SimpleLogin;

    sget-object v1, Lcom/firebase/simplelogin/enums/Provider;->PASSWORD:Lcom/firebase/simplelogin/enums/Provider;

    iget-object v2, p0, Lcom/firebase/simplelogin/SimpleLogin$2;->val$completionHandler:Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;

    invoke-static {v0, p1, v1, p2, v2}, Lcom/firebase/simplelogin/SimpleLogin;->access$000(Lcom/firebase/simplelogin/SimpleLogin;Ljava/lang/String;Lcom/firebase/simplelogin/enums/Provider;Lorg/json/JSONObject;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 305
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 306
    invoke-static {v3}, Lcom/firebase/simplelogin/FirebaseUtils;->errorFromResponse(Lorg/json/JSONObject;)Lcom/firebase/simplelogin/enums/Error;

    move-result-object p1

    .line 307
    iget-object p2, p0, Lcom/firebase/simplelogin/SimpleLogin$2;->val$completionHandler:Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;

    invoke-interface {p2, p1, v3}, Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;->authenticated(Lcom/firebase/simplelogin/enums/Error;Lcom/firebase/simplelogin/User;)V

    :goto_3
    return-void
.end method
