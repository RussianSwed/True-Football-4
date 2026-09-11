.class public Lcom/firebase/client/Firebase;
.super Lcom/firebase/client/Query;
.source "Firebase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/Firebase$AuthListener;,
        Lcom/firebase/client/Firebase$CompletionListener;
    }
.end annotation


# static fields
.field private static defaultConfig:Lcom/firebase/client/Config;

.field private static final mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/firebase/client/Config;

    invoke-direct {v0}, Lcom/firebase/client/Config;-><init>()V

    sput-object v0, Lcom/firebase/client/Firebase;->defaultConfig:Lcom/firebase/client/Config;

    .line 43
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/firebase/client/Firebase;->mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method public constructor <init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/Query;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    return-void
.end method

.method private constructor <init>(Lcom/firebase/client/utilities/ParsedUrl;)V
    .locals 2

    .line 122
    sget-object v0, Lcom/firebase/client/Firebase;->defaultConfig:Lcom/firebase/client/Config;

    iget-object v1, p1, Lcom/firebase/client/utilities/ParsedUrl;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    invoke-static {v0, v1}, Lcom/firebase/client/core/RepoManager;->getRepo(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/RepoInfo;)Lcom/firebase/client/core/Repo;

    move-result-object v0

    iget-object p1, p1, Lcom/firebase/client/utilities/ParsedUrl;->path:Lcom/firebase/client/core/Path;

    sget-object v1, Lcom/firebase/client/core/view/QueryParams;->DEFAULT_PARAMS:Lcom/firebase/client/core/view/QueryParams;

    invoke-direct {p0, v0, p1, v1}, Lcom/firebase/client/Query;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;)V

    return-void
.end method

.method private constructor <init>(Lcom/firebase/client/utilities/ParsedUrl;Lcom/firebase/client/Config;)V
    .locals 1

    .line 118
    iget-object v0, p1, Lcom/firebase/client/utilities/ParsedUrl;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    invoke-static {p2, v0}, Lcom/firebase/client/core/RepoManager;->getRepo(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/RepoInfo;)Lcom/firebase/client/core/Repo;

    move-result-object p2

    iget-object p1, p1, Lcom/firebase/client/utilities/ParsedUrl;->path:Lcom/firebase/client/core/Path;

    sget-object v0, Lcom/firebase/client/core/view/QueryParams;->DEFAULT_PARAMS:Lcom/firebase/client/core/view/QueryParams;

    invoke-direct {p0, p2, p1, v0}, Lcom/firebase/client/Query;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 101
    invoke-static {p1}, Lcom/firebase/client/utilities/Utilities;->parseUrl(Ljava/lang/String;)Lcom/firebase/client/utilities/ParsedUrl;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/utilities/ParsedUrl;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/firebase/client/Config;)V
    .locals 0

    .line 114
    invoke-static {p1}, Lcom/firebase/client/utilities/Utilities;->parseUrl(Ljava/lang/String;)Lcom/firebase/client/utilities/ParsedUrl;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/utilities/ParsedUrl;Lcom/firebase/client/Config;)V

    return-void
.end method

.method public static getDefaultConfig()Lcom/firebase/client/Config;
    .locals 1

    .line 600
    sget-object v0, Lcom/firebase/client/Firebase;->defaultConfig:Lcom/firebase/client/Config;

    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.12-SNAPSHOT"

    return-object v0
.end method

.method public static goOffline()V
    .locals 1

    .line 509
    invoke-static {}, Lcom/firebase/client/Firebase;->getDefaultConfig()Lcom/firebase/client/Config;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/core/RepoManager;->interrupt(Lcom/firebase/client/core/Context;)V

    return-void
.end method

.method public static goOnline()V
    .locals 1

    .line 518
    invoke-static {}, Lcom/firebase/client/Firebase;->getDefaultConfig()Lcom/firebase/client/Config;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/core/RepoManager;->resume(Lcom/firebase/client/core/Context;)V

    return-void
.end method

.method public static setDefaultConfig(Lcom/firebase/client/Config;)V
    .locals 1

    .line 609
    sget-object v0, Lcom/firebase/client/Firebase;->defaultConfig:Lcom/firebase/client/Config;

    invoke-virtual {v0}, Lcom/firebase/client/Config;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    sput-object p0, Lcom/firebase/client/Firebase;->defaultConfig:Lcom/firebase/client/Config;

    return-void

    .line 610
    :cond_0
    new-instance p0, Lcom/firebase/client/FirebaseException;

    const-string v0, "Modifications to Config objects must occur before they are in use"

    invoke-direct {p0, v0}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setPriorityInternal(Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/firebase/client/Firebase;->path:Lcom/firebase/client/core/Path;

    invoke-static {v0}, Lcom/firebase/client/utilities/Validation;->validateWritablePath(Lcom/firebase/client/core/Path;)V

    .line 348
    iget-object v0, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    new-instance v1, Lcom/firebase/client/Firebase$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/firebase/client/Firebase$2;-><init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/Firebase$CompletionListener;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setValueInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/firebase/client/Firebase;->path:Lcom/firebase/client/core/Path;

    invoke-static {v0}, Lcom/firebase/client/utilities/Validation;->validateWritablePath(Lcom/firebase/client/core/Path;)V

    .line 277
    :try_start_0
    sget-object v0, Lcom/firebase/client/Firebase;->mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 279
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 280
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    :try_start_2
    invoke-static {p1, p2}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    .line 282
    iget-object p2, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    new-instance v0, Lcom/firebase/client/Firebase$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/firebase/client/Firebase$1;-><init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V

    invoke-virtual {p2, v0}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p1

    .line 280
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 290
    new-instance p2, Lcom/firebase/client/FirebaseException;

    const-string p3, "Failed to parse to snapshot"

    invoke-direct {p2, p3, p1}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public auth(Ljava/lang/String;Lcom/firebase/client/Firebase$AuthListener;)V
    .locals 2

    const-string v0, "listener must not be null"

    .line 423
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 425
    iget-object v0, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    new-instance v1, Lcom/firebase/client/Firebase$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/firebase/client/Firebase$4;-><init>(Lcom/firebase/client/Firebase;Ljava/lang/String;Lcom/firebase/client/Firebase$AuthListener;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method public child(Ljava/lang/String;)Lcom/firebase/client/Firebase;
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/firebase/client/Firebase;->path:Lcom/firebase/client/core/Path;

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {p1}, Lcom/firebase/client/utilities/Validation;->validateRootPathString(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-static {p1}, Lcom/firebase/client/utilities/Validation;->validatePathString(Ljava/lang/String;)V

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/firebase/client/Firebase;->path:Lcom/firebase/client/core/Path;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/Path;->child(Ljava/lang/String;)Lcom/firebase/client/core/Path;

    move-result-object p1

    .line 139
    new-instance v0, Lcom/firebase/client/Firebase;

    iget-object v1, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    invoke-direct {v0, v1, p1}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 571
    instance-of v0, p1, Lcom/firebase/client/Firebase;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/firebase/client/Firebase;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/firebase/client/Firebase;->path:Lcom/firebase/client/core/Path;

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/Firebase;->path:Lcom/firebase/client/core/Path;

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->getBack()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/firebase/client/Firebase;
    .locals 3

    .line 544
    iget-object v0, p0, Lcom/firebase/client/Firebase;->path:Lcom/firebase/client/core/Path;

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->getParent()Lcom/firebase/client/core/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 546
    new-instance v1, Lcom/firebase/client/Firebase;

    iget-object v2, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    invoke-direct {v1, v2, v0}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRoot()Lcom/firebase/client/Firebase;
    .locals 4

    .line 556
    new-instance v0, Lcom/firebase/client/Firebase;

    iget-object v1, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    new-instance v2, Lcom/firebase/client/core/Path;

    const-string v3, ""

    invoke-direct {v2, v3}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 576
    invoke-virtual {p0}, Lcom/firebase/client/Firebase;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public onDisconnect()Lcom/firebase/client/OnDisconnect;
    .locals 3

    .line 411
    new-instance v0, Lcom/firebase/client/OnDisconnect;

    iget-object v1, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    iget-object v2, p0, Lcom/firebase/client/Firebase;->path:Lcom/firebase/client/core/Path;

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/OnDisconnect;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    return-object v0
.end method

.method public push()Lcom/firebase/client/Firebase;
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    invoke-virtual {v0}, Lcom/firebase/client/core/Repo;->getServerTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/firebase/client/utilities/PushIdGenerator;->generatePushChildName(J)Ljava/lang/String;

    move-result-object v0

    .line 150
    new-instance v1, Lcom/firebase/client/Firebase;

    iget-object v2, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    iget-object v3, p0, Lcom/firebase/client/Firebase;->path:Lcom/firebase/client/core/Path;

    invoke-virtual {v3, v0}, Lcom/firebase/client/core/Path;->child(Ljava/lang/String;)Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    return-object v1
.end method

.method public removeValue()V
    .locals 1

    const/4 v0, 0x0

    .line 393
    invoke-virtual {p0, v0}, Lcom/firebase/client/Firebase;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public removeValue(Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 401
    invoke-virtual {p0, v0, p1}, Lcom/firebase/client/Firebase;->setValue(Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method

.method public runTransaction(Lcom/firebase/client/Transaction$Handler;)V
    .locals 1

    const/4 v0, 0x1

    .line 463
    invoke-virtual {p0, p1, v0}, Lcom/firebase/client/Firebase;->runTransaction(Lcom/firebase/client/Transaction$Handler;Z)V

    return-void
.end method

.method public runTransaction(Lcom/firebase/client/Transaction$Handler;Z)V
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/firebase/client/Firebase;->path:Lcom/firebase/client/core/Path;

    invoke-static {v0}, Lcom/firebase/client/utilities/Validation;->validateWritablePath(Lcom/firebase/client/core/Path;)V

    .line 477
    iget-object v0, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    new-instance v1, Lcom/firebase/client/Firebase$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/firebase/client/Firebase$6;-><init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/Transaction$Handler;Z)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method setHijackHash(Z)V
    .locals 2

    .line 587
    iget-object v0, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    new-instance v1, Lcom/firebase/client/Firebase$7;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/Firebase$7;-><init>(Lcom/firebase/client/Firebase;Z)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPriority(Ljava/lang/Object;)V
    .locals 1

    .line 317
    invoke-static {p1}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/firebase/client/Firebase;->setPriorityInternal(Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method

.method public setPriority(Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 0

    .line 343
    invoke-static {p1}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/firebase/client/Firebase;->setPriorityInternal(Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 179
    invoke-static {v0}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/NodePriority;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/firebase/client/Firebase;->setValueInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 239
    invoke-static {v0}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/NodePriority;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/firebase/client/Firebase;->setValueInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 209
    invoke-static {p2}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/firebase/client/Firebase;->setValueInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 0

    .line 270
    invoke-static {p2}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/firebase/client/Firebase;->setValueInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 528
    invoke-virtual {p0}, Lcom/firebase/client/Firebase;->getParent()Lcom/firebase/client/Firebase;

    move-result-object v0

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    invoke-virtual {v0}, Lcom/firebase/client/core/Repo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 533
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/firebase/client/Firebase;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/firebase/client/Firebase;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "+"

    const-string v3, "%20"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 535
    new-instance v1, Lcom/firebase/client/FirebaseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to URLEncode name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/firebase/client/Firebase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unauth()V
    .locals 1

    const/4 v0, 0x0

    .line 437
    invoke-virtual {p0, v0}, Lcom/firebase/client/Firebase;->unauth(Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method

.method public unauth(Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    new-instance v1, Lcom/firebase/client/Firebase$5;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/Firebase$5;-><init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/Firebase$CompletionListener;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateChildren(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 363
    invoke-virtual {p0, p1, v0}, Lcom/firebase/client/Firebase;->updateChildren(Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method

.method public updateChildren(Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/firebase/client/Firebase$CompletionListener;",
            ")V"
        }
    .end annotation

    .line 372
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 373
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 374
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 376
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    new-instance v2, Lcom/firebase/client/Firebase$3;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/firebase/client/Firebase$3;-><init>(Lcom/firebase/client/Firebase;Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method
