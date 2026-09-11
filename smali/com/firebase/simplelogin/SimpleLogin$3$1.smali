.class Lcom/firebase/simplelogin/SimpleLogin$3$1;
.super Ljava/lang/Object;
.source "SimpleLogin.java"

# interfaces
.implements Lcom/firebase/client/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/simplelogin/SimpleLogin$3;->onAuthSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/firebase/simplelogin/SimpleLogin$3;

.field final synthetic val$authRef:Lcom/firebase/client/Firebase;


# direct methods
.method constructor <init>(Lcom/firebase/simplelogin/SimpleLogin$3;Lcom/firebase/client/Firebase;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/firebase/simplelogin/SimpleLogin$3$1;->this$1:Lcom/firebase/simplelogin/SimpleLogin$3;

    iput-object p2, p0, Lcom/firebase/simplelogin/SimpleLogin$3$1;->val$authRef:Lcom/firebase/client/Firebase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/firebase/client/FirebaseError;)V
    .locals 0

    return-void
.end method

.method public onDataChange(Lcom/firebase/client/DataSnapshot;)V
    .locals 1

    .line 325
    invoke-virtual {p1}, Lcom/firebase/client/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 326
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 327
    check-cast p1, Ljava/lang/Boolean;

    .line 328
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 329
    iget-object p1, p0, Lcom/firebase/simplelogin/SimpleLogin$3$1;->this$1:Lcom/firebase/simplelogin/SimpleLogin$3;

    iget-object p1, p1, Lcom/firebase/simplelogin/SimpleLogin$3;->this$0:Lcom/firebase/simplelogin/SimpleLogin;

    invoke-static {p1}, Lcom/firebase/simplelogin/SimpleLogin;->access$300(Lcom/firebase/simplelogin/SimpleLogin;)V

    .line 330
    iget-object p1, p0, Lcom/firebase/simplelogin/SimpleLogin$3$1;->val$authRef:Lcom/firebase/client/Firebase;

    invoke-virtual {p1, p0}, Lcom/firebase/client/Firebase;->removeEventListener(Lcom/firebase/client/ValueEventListener;)V

    :cond_0
    return-void
.end method
