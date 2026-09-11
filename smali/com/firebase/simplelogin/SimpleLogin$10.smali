.class Lcom/firebase/simplelogin/SimpleLogin$10;
.super Ljava/lang/Object;
.source "SimpleLogin.java"

# interfaces
.implements Lcom/firebase/simplelogin/RequestHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/simplelogin/SimpleLogin;->sendPasswordResetEmail(Ljava/lang/String;Lcom/firebase/simplelogin/SimpleLoginCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/simplelogin/SimpleLogin;

.field final synthetic val$handler:Lcom/firebase/simplelogin/SimpleLoginCompletionHandler;


# direct methods
.method constructor <init>(Lcom/firebase/simplelogin/SimpleLogin;Lcom/firebase/simplelogin/SimpleLoginCompletionHandler;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/firebase/simplelogin/SimpleLogin$10;->this$0:Lcom/firebase/simplelogin/SimpleLogin;

    iput-object p2, p0, Lcom/firebase/simplelogin/SimpleLogin$10;->val$handler:Lcom/firebase/simplelogin/SimpleLoginCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/firebase/simplelogin/enums/Error;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "error"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 563
    iget-object p2, p0, Lcom/firebase/simplelogin/SimpleLogin$10;->val$handler:Lcom/firebase/simplelogin/SimpleLoginCompletionHandler;

    invoke-interface {p2, p1, v1}, Lcom/firebase/simplelogin/SimpleLoginCompletionHandler;->completed(Lcom/firebase/simplelogin/enums/Error;Z)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 567
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    if-eqz p2, :cond_2

    .line 569
    iget-object v0, p0, Lcom/firebase/simplelogin/SimpleLogin$10;->val$handler:Lcom/firebase/simplelogin/SimpleLoginCompletionHandler;

    invoke-static {p2}, Lcom/firebase/simplelogin/FirebaseUtils;->errorFromResponse(Lorg/json/JSONObject;)Lcom/firebase/simplelogin/enums/Error;

    move-result-object p2

    invoke-interface {v0, p2, v1}, Lcom/firebase/simplelogin/SimpleLoginCompletionHandler;->completed(Lcom/firebase/simplelogin/enums/Error;Z)V

    goto :goto_1

    .line 572
    :cond_2
    iget-object p2, p0, Lcom/firebase/simplelogin/SimpleLogin$10;->val$handler:Lcom/firebase/simplelogin/SimpleLoginCompletionHandler;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/firebase/simplelogin/SimpleLoginCompletionHandler;->completed(Lcom/firebase/simplelogin/enums/Error;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 576
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 577
    invoke-static {p1}, Lcom/firebase/simplelogin/FirebaseUtils;->errorFromResponse(Lorg/json/JSONObject;)Lcom/firebase/simplelogin/enums/Error;

    move-result-object p1

    .line 578
    iget-object p2, p0, Lcom/firebase/simplelogin/SimpleLogin$10;->val$handler:Lcom/firebase/simplelogin/SimpleLoginCompletionHandler;

    invoke-interface {p2, p1, v1}, Lcom/firebase/simplelogin/SimpleLoginCompletionHandler;->completed(Lcom/firebase/simplelogin/enums/Error;Z)V

    :goto_1
    return-void
.end method
