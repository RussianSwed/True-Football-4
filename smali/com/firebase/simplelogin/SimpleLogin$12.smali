.class Lcom/firebase/simplelogin/SimpleLogin$12;
.super Ljava/lang/Object;
.source "SimpleLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/simplelogin/SimpleLogin;->handleInvalidPassword(Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/simplelogin/SimpleLogin;

.field final synthetic val$userHandler:Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;


# direct methods
.method constructor <init>(Lcom/firebase/simplelogin/SimpleLogin;Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/firebase/simplelogin/SimpleLogin$12;->this$0:Lcom/firebase/simplelogin/SimpleLogin;

    iput-object p2, p0, Lcom/firebase/simplelogin/SimpleLogin$12;->val$userHandler:Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 599
    iget-object v0, p0, Lcom/firebase/simplelogin/SimpleLogin$12;->val$userHandler:Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;

    if-eqz v0, :cond_0

    .line 600
    sget-object v1, Lcom/firebase/simplelogin/enums/Error;->InvalidPassword:Lcom/firebase/simplelogin/enums/Error;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;->authenticated(Lcom/firebase/simplelogin/enums/Error;Lcom/firebase/simplelogin/User;)V

    :cond_0
    return-void
.end method
