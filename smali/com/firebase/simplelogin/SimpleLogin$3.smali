.class Lcom/firebase/simplelogin/SimpleLogin$3;
.super Ljava/lang/Object;
.source "SimpleLogin.java"

# interfaces
.implements Lcom/firebase/client/Firebase$AuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/simplelogin/SimpleLogin;->attemptAuthWithToken(Ljava/lang/String;Lcom/firebase/simplelogin/enums/Provider;Lorg/json/JSONObject;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/simplelogin/SimpleLogin;

.field final synthetic val$completionHandler:Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;

.field final synthetic val$provider:Lcom/firebase/simplelogin/enums/Provider;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$userData:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/firebase/simplelogin/SimpleLogin;Ljava/lang/String;Lcom/firebase/simplelogin/enums/Provider;Lorg/json/JSONObject;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/firebase/simplelogin/SimpleLogin$3;->this$0:Lcom/firebase/simplelogin/SimpleLogin;

    iput-object p2, p0, Lcom/firebase/simplelogin/SimpleLogin$3;->val$token:Ljava/lang/String;

    iput-object p3, p0, Lcom/firebase/simplelogin/SimpleLogin$3;->val$provider:Lcom/firebase/simplelogin/enums/Provider;

    iput-object p4, p0, Lcom/firebase/simplelogin/SimpleLogin$3;->val$userData:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/firebase/simplelogin/SimpleLogin$3;->val$completionHandler:Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthError(Lcom/firebase/client/FirebaseError;)V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/firebase/simplelogin/SimpleLogin$3;->val$completionHandler:Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;

    invoke-static {p1}, Lcom/firebase/simplelogin/FirebaseUtils;->errorFromFirebaseError(Lcom/firebase/client/FirebaseError;)Lcom/firebase/simplelogin/enums/Error;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;->authenticated(Lcom/firebase/simplelogin/enums/Error;Lcom/firebase/simplelogin/User;)V

    return-void
.end method

.method public onAuthRevoked(Lcom/firebase/client/FirebaseError;)V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/firebase/simplelogin/SimpleLogin$3;->this$0:Lcom/firebase/simplelogin/SimpleLogin;

    invoke-static {v0}, Lcom/firebase/simplelogin/SimpleLogin;->access$300(Lcom/firebase/simplelogin/SimpleLogin;)V

    .line 347
    iget-object v0, p0, Lcom/firebase/simplelogin/SimpleLogin$3;->val$completionHandler:Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;

    invoke-static {p1}, Lcom/firebase/simplelogin/FirebaseUtils;->errorFromFirebaseError(Lcom/firebase/client/FirebaseError;)Lcom/firebase/simplelogin/enums/Error;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;->authenticated(Lcom/firebase/simplelogin/enums/Error;Lcom/firebase/simplelogin/User;)V

    return-void
.end method

.method public onAuthSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 320
    iget-object p1, p0, Lcom/firebase/simplelogin/SimpleLogin$3;->this$0:Lcom/firebase/simplelogin/SimpleLogin;

    iget-object v0, p0, Lcom/firebase/simplelogin/SimpleLogin$3;->val$token:Ljava/lang/String;

    iget-object v1, p0, Lcom/firebase/simplelogin/SimpleLogin$3;->val$provider:Lcom/firebase/simplelogin/enums/Provider;

    iget-object v2, p0, Lcom/firebase/simplelogin/SimpleLogin$3;->val$userData:Lorg/json/JSONObject;

    invoke-static {p1, v0, v1, v2}, Lcom/firebase/simplelogin/SimpleLogin;->access$100(Lcom/firebase/simplelogin/SimpleLogin;Ljava/lang/String;Lcom/firebase/simplelogin/enums/Provider;Lorg/json/JSONObject;)Lcom/firebase/simplelogin/User;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/firebase/simplelogin/SimpleLogin$3;->this$0:Lcom/firebase/simplelogin/SimpleLogin;

    invoke-static {v1}, Lcom/firebase/simplelogin/SimpleLogin;->access$200(Lcom/firebase/simplelogin/SimpleLogin;)Lcom/firebase/client/Firebase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/Firebase;->getRoot()Lcom/firebase/client/Firebase;

    move-result-object v1

    const-string v2, ".info/authenticated"

    invoke-virtual {v1, v2}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object v1

    .line 323
    new-instance v2, Lcom/firebase/simplelogin/SimpleLogin$3$1;

    invoke-direct {v2, p0, v1}, Lcom/firebase/simplelogin/SimpleLogin$3$1;-><init>(Lcom/firebase/simplelogin/SimpleLogin$3;Lcom/firebase/client/Firebase;)V

    .line 336
    invoke-virtual {v1, v2}, Lcom/firebase/client/Firebase;->addValueEventListener(Lcom/firebase/client/ValueEventListener;)Lcom/firebase/client/ValueEventListener;

    .line 337
    iget-object v1, p0, Lcom/firebase/simplelogin/SimpleLogin$3;->val$completionHandler:Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;

    invoke-interface {v1, v0, p1}, Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;->authenticated(Lcom/firebase/simplelogin/enums/Error;Lcom/firebase/simplelogin/User;)V

    goto :goto_0

    .line 340
    :cond_0
    iget-object p1, p0, Lcom/firebase/simplelogin/SimpleLogin$3;->val$completionHandler:Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;

    invoke-static {v0}, Lcom/firebase/simplelogin/FirebaseUtils;->errorFromResponse(Lorg/json/JSONObject;)Lcom/firebase/simplelogin/enums/Error;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;->authenticated(Lcom/firebase/simplelogin/enums/Error;Lcom/firebase/simplelogin/User;)V

    :goto_0
    return-void
.end method
