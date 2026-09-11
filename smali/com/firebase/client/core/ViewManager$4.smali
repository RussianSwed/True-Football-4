.class Lcom/firebase/client/core/ViewManager$4;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Lcom/firebase/client/Firebase$CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/ViewManager;->startListening(Lcom/firebase/client/core/view/QueryMap;)Lcom/firebase/client/core/view/QueryMap$StopListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/ViewManager;

.field final synthetic val$isDefault:Ljava/lang/Boolean;

.field final synthetic val$params:Ljava/util/Set;

.field final synthetic val$path:Lcom/firebase/client/core/Path;

.field final synthetic val$queryMap:Lcom/firebase/client/core/view/QueryMap;

.field final synthetic val$stopListener:Lcom/firebase/client/core/ViewManager$1StopListener;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/ViewManager;Lcom/firebase/client/core/view/QueryMap;Lcom/firebase/client/core/ViewManager$1StopListener;Ljava/lang/Boolean;Lcom/firebase/client/core/Path;Ljava/util/Set;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/firebase/client/core/ViewManager$4;->this$0:Lcom/firebase/client/core/ViewManager;

    iput-object p2, p0, Lcom/firebase/client/core/ViewManager$4;->val$queryMap:Lcom/firebase/client/core/view/QueryMap;

    iput-object p3, p0, Lcom/firebase/client/core/ViewManager$4;->val$stopListener:Lcom/firebase/client/core/ViewManager$1StopListener;

    iput-object p4, p0, Lcom/firebase/client/core/ViewManager$4;->val$isDefault:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/firebase/client/core/ViewManager$4;->val$path:Lcom/firebase/client/core/Path;

    iput-object p6, p0, Lcom/firebase/client/core/ViewManager$4;->val$params:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 163
    iget-object p2, p0, Lcom/firebase/client/core/ViewManager$4;->this$0:Lcom/firebase/client/core/ViewManager;

    invoke-static {p2}, Lcom/firebase/client/core/ViewManager;->access$100(Lcom/firebase/client/core/ViewManager;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding a listener failed for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/firebase/client/core/ViewManager$4;->val$queryMap:Lcom/firebase/client/core/view/QueryMap;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/QueryMap;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 164
    iget-object p2, p0, Lcom/firebase/client/core/ViewManager$4;->this$0:Lcom/firebase/client/core/ViewManager;

    iget-object v0, p0, Lcom/firebase/client/core/ViewManager$4;->val$queryMap:Lcom/firebase/client/core/view/QueryMap;

    invoke-static {p2, v0, p1}, Lcom/firebase/client/core/ViewManager;->access$200(Lcom/firebase/client/core/ViewManager;Lcom/firebase/client/core/view/QueryMap;Lcom/firebase/client/FirebaseError;)V

    goto :goto_1

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/firebase/client/core/ViewManager$4;->val$stopListener:Lcom/firebase/client/core/ViewManager$1StopListener;

    iget-object p1, p1, Lcom/firebase/client/core/ViewManager$1StopListener;->stopped:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    .line 167
    iget-object p1, p0, Lcom/firebase/client/core/ViewManager$4;->val$isDefault:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 168
    iget-object p1, p0, Lcom/firebase/client/core/ViewManager$4;->this$0:Lcom/firebase/client/core/ViewManager;

    iget-object p2, p0, Lcom/firebase/client/core/ViewManager$4;->val$path:Lcom/firebase/client/core/Path;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/firebase/client/core/ViewManager;->access$300(Lcom/firebase/client/core/ViewManager;Lcom/firebase/client/core/Path;Z)V

    goto :goto_1

    .line 170
    :cond_1
    iget-object p1, p0, Lcom/firebase/client/core/ViewManager$4;->val$params:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/firebase/client/core/view/QueryParams;

    .line 171
    iget-object v0, p0, Lcom/firebase/client/core/ViewManager$4;->val$queryMap:Lcom/firebase/client/core/view/QueryMap;

    invoke-virtual {v0, p2}, Lcom/firebase/client/core/view/QueryMap;->getView(Lcom/firebase/client/core/view/QueryParams;)Lcom/firebase/client/core/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 173
    invoke-virtual {p2}, Lcom/firebase/client/core/view/View;->markComplete()V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
