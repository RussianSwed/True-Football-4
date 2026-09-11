.class Lcom/firebase/client/core/ViewManager$5;
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
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/ViewManager;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/ViewManager;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/firebase/client/core/ViewManager$5;->this$0:Lcom/firebase/client/core/ViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stopListening()V
    .locals 0

    return-void
.end method
