.class Lcom/firebase/client/core/PersistentConnection$6;
.super Ljava/lang/Object;
.source "PersistentConnection.java"

# interfaces
.implements Lcom/firebase/client/core/PersistentConnection$ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/PersistentConnection;->sendListen(Ljava/lang/String;Ljava/util/Set;Lcom/firebase/client/Firebase$CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/PersistentConnection;

.field final synthetic val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

.field final synthetic val$pathString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/PersistentConnection;Ljava/lang/String;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 0

    .line 726
    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection$6;->this$0:Lcom/firebase/client/core/PersistentConnection;

    iput-object p2, p0, Lcom/firebase/client/core/PersistentConnection$6;->val$pathString:Ljava/lang/String;

    iput-object p3, p0, Lcom/firebase/client/core/PersistentConnection$6;->val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "s"

    .line 729
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ok"

    .line 730
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 731
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection$6;->this$0:Lcom/firebase/client/core/PersistentConnection;

    iget-object v3, p0, Lcom/firebase/client/core/PersistentConnection$6;->val$pathString:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/firebase/client/core/PersistentConnection;->access$700(Lcom/firebase/client/core/PersistentConnection;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Collection;

    .line 732
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection$6;->val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    const-string v3, "d"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/firebase/client/FirebaseError;->fromStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/FirebaseError;

    move-result-object p1

    invoke-interface {v1, p1, v2}, Lcom/firebase/client/Firebase$CompletionListener;->onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V

    goto :goto_0

    .line 735
    :cond_0
    iget-object p1, p0, Lcom/firebase/client/core/PersistentConnection$6;->val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    invoke-interface {p1, v2, v2}, Lcom/firebase/client/Firebase$CompletionListener;->onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V

    :goto_0
    return-void
.end method
