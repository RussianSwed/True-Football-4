.class Lcom/firebase/simplelogin/SimpleLogin$5;
.super Ljava/lang/Object;
.source "SimpleLogin.java"

# interfaces
.implements Lcom/firebase/simplelogin/SimpleLoginAuthenticatedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/simplelogin/SimpleLogin;->removeUser(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/simplelogin/SimpleLoginCompletionHandler;)V
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

    .line 457
    iput-object p1, p0, Lcom/firebase/simplelogin/SimpleLogin$5;->this$0:Lcom/firebase/simplelogin/SimpleLogin;

    iput-object p2, p0, Lcom/firebase/simplelogin/SimpleLogin$5;->val$handler:Lcom/firebase/simplelogin/SimpleLoginCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticated(Lcom/firebase/simplelogin/enums/Error;Lcom/firebase/simplelogin/User;)V
    .locals 1

    .line 459
    iget-object p2, p0, Lcom/firebase/simplelogin/SimpleLogin$5;->val$handler:Lcom/firebase/simplelogin/SimpleLoginCompletionHandler;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/firebase/simplelogin/SimpleLoginCompletionHandler;->completed(Lcom/firebase/simplelogin/enums/Error;Z)V

    return-void
.end method
