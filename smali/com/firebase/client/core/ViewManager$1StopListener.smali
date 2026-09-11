.class Lcom/firebase/client/core/ViewManager$1StopListener;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Lcom/firebase/client/core/view/QueryMap$StopListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/ViewManager;->startListening(Lcom/firebase/client/core/view/QueryMap;)Lcom/firebase/client/core/view/QueryMap$StopListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StopListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public stopped:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/firebase/client/core/ViewManager;

.field final synthetic val$params:Ljava/util/Set;

.field final synthetic val$queryMap:Lcom/firebase/client/core/view/QueryMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 148
    const-class v0, Lcom/firebase/client/core/ViewManager;

    return-void
.end method

.method constructor <init>(Lcom/firebase/client/core/ViewManager;Ljava/util/Set;Lcom/firebase/client/core/view/QueryMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/firebase/client/core/ViewManager$1StopListener;->this$0:Lcom/firebase/client/core/ViewManager;

    iput-object p2, p0, Lcom/firebase/client/core/ViewManager$1StopListener;->val$params:Ljava/util/Set;

    iput-object p3, p0, Lcom/firebase/client/core/ViewManager$1StopListener;->val$queryMap:Lcom/firebase/client/core/view/QueryMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 149
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/client/core/ViewManager$1StopListener;->stopped:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public stopListening()V
    .locals 3

    const/4 v0, 0x1

    .line 153
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/ViewManager$1StopListener;->stopped:Ljava/lang/Boolean;

    .line 154
    iget-object v0, p0, Lcom/firebase/client/core/ViewManager$1StopListener;->this$0:Lcom/firebase/client/core/ViewManager;

    invoke-static {v0}, Lcom/firebase/client/core/ViewManager;->access$000(Lcom/firebase/client/core/ViewManager;)Lcom/firebase/client/core/PersistentConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/ViewManager$1StopListener;->val$queryMap:Lcom/firebase/client/core/view/QueryMap;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/QueryMap;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/core/ViewManager$1StopListener;->val$params:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/firebase/client/core/PersistentConnection;->unlisten(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method
