.class public Lcom/firebase/client/Config;
.super Lcom/firebase/client/core/Context;
.source "Config.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/firebase/client/core/Context;-><init>()V

    return-void
.end method


# virtual methods
.method public setDebugLogComponents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/firebase/client/Config;->assertUnfrozen()V

    .line 89
    sget-object v0, Lcom/firebase/client/Logger$Level;->DEBUG:Lcom/firebase/client/Logger$Level;

    invoke-virtual {p0, v0}, Lcom/firebase/client/Config;->setLogLevel(Lcom/firebase/client/Logger$Level;)V

    .line 90
    iput-object p1, p0, Lcom/firebase/client/Config;->loggedComponents:Ljava/util/List;

    return-void
.end method

.method public setEventTarget(Lcom/firebase/client/EventTarget;)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/firebase/client/Config;->assertUnfrozen()V

    .line 48
    iput-object p1, p0, Lcom/firebase/client/Config;->eventTarget:Lcom/firebase/client/EventTarget;

    return-void
.end method

.method public setLogLevel(Lcom/firebase/client/Logger$Level;)V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/firebase/client/Config;->assertUnfrozen()V

    .line 78
    iput-object p1, p0, Lcom/firebase/client/Config;->logLevel:Lcom/firebase/client/Logger$Level;

    return-void
.end method

.method public setLogger(Lcom/firebase/client/Logger;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/firebase/client/Config;->assertUnfrozen()V

    .line 33
    iput-object p1, p0, Lcom/firebase/client/Config;->logger:Lcom/firebase/client/Logger;

    return-void
.end method

.method public setPersistentStorage(Lcom/firebase/client/PersistentStorage;)V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/firebase/client/Config;->assertUnfrozen()V

    .line 64
    iput-object p1, p0, Lcom/firebase/client/Config;->storage:Lcom/firebase/client/PersistentStorage;

    return-void
.end method

.method setRunLoop(Lcom/firebase/client/RunLoop;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/firebase/client/Config;->runLoop:Lcom/firebase/client/RunLoop;

    return-void
.end method
