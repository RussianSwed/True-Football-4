.class public Lcom/firebase/client/core/RepoManager;
.super Ljava/lang/Object;
.source "RepoManager.java"


# static fields
.field private static final instance:Lcom/firebase/client/core/RepoManager;


# instance fields
.field private repos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/firebase/client/core/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/firebase/client/core/Repo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/firebase/client/core/RepoManager;

    invoke-direct {v0}, Lcom/firebase/client/core/RepoManager;-><init>()V

    sput-object v0, Lcom/firebase/client/core/RepoManager;->instance:Lcom/firebase/client/core/RepoManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/RepoManager;->repos:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/core/RepoManager;)Ljava/util/Map;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/firebase/client/core/RepoManager;->repos:Ljava/util/Map;

    return-object p0
.end method

.method private getLocalRepo(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/RepoInfo;)Lcom/firebase/client/core/Repo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    .line 133
    invoke-virtual {p1}, Lcom/firebase/client/core/Context;->freeze()V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/firebase/client/core/RepoInfo;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/firebase/client/core/RepoInfo;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/firebase/client/core/RepoManager;->repos:Ljava/util/Map;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v2, p0, Lcom/firebase/client/core/RepoManager;->repos:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 138
    iget-object v3, p0, Lcom/firebase/client/core/RepoManager;->repos:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/firebase/client/core/RepoManager;->repos:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 141
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 142
    new-instance v3, Lcom/firebase/client/core/Repo;

    invoke-direct {v3, p2, p1}, Lcom/firebase/client/core/Repo;-><init>(Lcom/firebase/client/core/RepoInfo;Lcom/firebase/client/core/Context;)V

    .line 143
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    monitor-exit v1

    return-object v3

    .line 146
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/firebase/client/core/Repo;

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 158
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getRepo(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/RepoInfo;)Lcom/firebase/client/core/Repo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/firebase/client/core/RepoManager;->instance:Lcom/firebase/client/core/RepoManager;

    invoke-direct {v0, p0, p1}, Lcom/firebase/client/core/RepoManager;->getLocalRepo(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/RepoInfo;)Lcom/firebase/client/core/Repo;

    move-result-object p0

    return-object p0
.end method

.method public static interrupt(Lcom/firebase/client/core/Context;)V
    .locals 1

    .line 108
    sget-object v0, Lcom/firebase/client/core/RepoManager;->instance:Lcom/firebase/client/core/RepoManager;

    invoke-direct {v0, p0}, Lcom/firebase/client/core/RepoManager;->interruptInternal(Lcom/firebase/client/core/Context;)V

    return-void
.end method

.method private interruptInternal(Lcom/firebase/client/core/Context;)V
    .locals 2

    .line 162
    invoke-virtual {p1}, Lcom/firebase/client/core/Context;->getRunLoop()Lcom/firebase/client/RunLoop;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    new-instance v1, Lcom/firebase/client/core/RepoManager$1;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/core/RepoManager$1;-><init>(Lcom/firebase/client/core/RepoManager;Lcom/firebase/client/core/Context;)V

    invoke-interface {v0, v1}, Lcom/firebase/client/RunLoop;->scheduleNow(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static resume(Lcom/firebase/client/core/Context;)V
    .locals 1

    .line 112
    sget-object v0, Lcom/firebase/client/core/RepoManager;->instance:Lcom/firebase/client/core/RepoManager;

    invoke-direct {v0, p0}, Lcom/firebase/client/core/RepoManager;->resumeInternal(Lcom/firebase/client/core/Context;)V

    return-void
.end method

.method private resumeInternal(Lcom/firebase/client/core/Context;)V
    .locals 2

    .line 180
    invoke-virtual {p1}, Lcom/firebase/client/core/Context;->getRunLoop()Lcom/firebase/client/RunLoop;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    new-instance v1, Lcom/firebase/client/core/RepoManager$2;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/core/RepoManager$2;-><init>(Lcom/firebase/client/core/RepoManager;Lcom/firebase/client/core/Context;)V

    invoke-interface {v0, v1}, Lcom/firebase/client/RunLoop;->scheduleNow(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
