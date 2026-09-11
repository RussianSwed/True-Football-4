.class Lcom/firebase/simplelogin/SimpleLogin$4;
.super Ljava/lang/Object;
.source "SimpleLogin.java"

# interfaces
.implements Lcom/firebase/simplelogin/RequestHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/simplelogin/SimpleLogin;->createUser(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V
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

    .line 414
    iput-object p1, p0, Lcom/firebase/simplelogin/SimpleLogin$4;->this$0:Lcom/firebase/simplelogin/SimpleLogin;

    iput-object p2, p0, Lcom/firebase/simplelogin/SimpleLogin$4;->val$completionHandler:Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/firebase/simplelogin/enums/Error;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "user"

    const-string v1, "error"

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 417
    iget-object p2, p0, Lcom/firebase/simplelogin/SimpleLogin$4;->val$completionHandler:Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;

    invoke-interface {p2, p1, v2}, Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;->authenticated(Lcom/firebase/simplelogin/enums/Error;Lcom/firebase/simplelogin/User;)V

    goto :goto_2

    .line 421
    :cond_0
    :try_start_0
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v2

    .line 422
    :goto_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p2, v2

    :goto_1
    if-eqz p1, :cond_3

    .line 424
    invoke-static {p1}, Lcom/firebase/simplelogin/FirebaseUtils;->errorFromResponse(Lorg/json/JSONObject;)Lcom/firebase/simplelogin/enums/Error;

    move-result-object p1

    .line 425
    iget-object p2, p0, Lcom/firebase/simplelogin/SimpleLogin$4;->val$completionHandler:Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;

    invoke-interface {p2, p1, v2}, Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;->authenticated(Lcom/firebase/simplelogin/enums/Error;Lcom/firebase/simplelogin/User;)V

    goto :goto_2

    :cond_3
    if-nez p2, :cond_4

    .line 428
    invoke-static {v2}, Lcom/firebase/simplelogin/FirebaseUtils;->errorFromResponse(Lorg/json/JSONObject;)Lcom/firebase/simplelogin/enums/Error;

    move-result-object p1

    .line 429
    iget-object p2, p0, Lcom/firebase/simplelogin/SimpleLogin$4;->val$completionHandler:Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;

    invoke-interface {p2, p1, v2}, Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;->authenticated(Lcom/firebase/simplelogin/enums/Error;Lcom/firebase/simplelogin/User;)V

    goto :goto_2

    :cond_4
    const-string p1, "id"

    .line 432
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "email"

    .line 433
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 434
    new-instance v0, Lcom/firebase/simplelogin/User;

    invoke-direct {v0, p1, v2, p2}, Lcom/firebase/simplelogin/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object p1, p0, Lcom/firebase/simplelogin/SimpleLogin$4;->val$completionHandler:Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;

    invoke-interface {p1, v2, v0}, Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;->authenticated(Lcom/firebase/simplelogin/enums/Error;Lcom/firebase/simplelogin/User;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 439
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 440
    invoke-static {v2}, Lcom/firebase/simplelogin/FirebaseUtils;->errorFromResponse(Lorg/json/JSONObject;)Lcom/firebase/simplelogin/enums/Error;

    move-result-object p1

    .line 441
    iget-object p2, p0, Lcom/firebase/simplelogin/SimpleLogin$4;->val$completionHandler:Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;

    invoke-interface {p2, p1, v2}, Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;->authenticated(Lcom/firebase/simplelogin/enums/Error;Lcom/firebase/simplelogin/User;)V

    :goto_2
    return-void
.end method
