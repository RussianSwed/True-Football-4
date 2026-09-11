.class public Lcom/firebase/client/core/Context;
.super Ljava/lang/Object;
.source "Context.java"


# instance fields
.field protected eventTarget:Lcom/firebase/client/EventTarget;

.field private frozen:Z

.field protected logLevel:Lcom/firebase/client/Logger$Level;

.field protected loggedComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected logger:Lcom/firebase/client/Logger;

.field protected runLoop:Lcom/firebase/client/RunLoop;

.field protected storage:Lcom/firebase/client/PersistentStorage;

.field protected userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/firebase/client/Logger$Level;->INFO:Lcom/firebase/client/Logger$Level;

    iput-object v0, p0, Lcom/firebase/client/core/Context;->logLevel:Lcom/firebase/client/Logger$Level;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/firebase/client/core/Context;->frozen:Z

    return-void
.end method

.method private buildUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Firebase/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/firebase/client/Firebase;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createEventTarget()Lcom/firebase/client/EventTarget;
    .locals 2

    .line 121
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->tryAndroidHandler()Lcom/firebase/client/EventTarget;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->tryJVMThreadPool()Lcom/firebase/client/EventTarget;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    .line 126
    :cond_1
    new-instance v0, Lcom/firebase/client/FirebaseException;

    const-string v1, "Unable to create an event target"

    invoke-direct {v0, v1}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createLogger()Lcom/firebase/client/Logger;
    .locals 3

    .line 97
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->tryAndroidLogger()Lcom/firebase/client/Logger;

    move-result-object v0

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/firebase/client/utilities/DefaultLogger;

    iget-object v1, p0, Lcom/firebase/client/core/Context;->logLevel:Lcom/firebase/client/Logger$Level;

    iget-object v2, p0, Lcom/firebase/client/core/Context;->loggedComponents:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/utilities/DefaultLogger;-><init>(Lcom/firebase/client/Logger$Level;Ljava/util/List;)V

    :cond_0
    return-object v0
.end method

.method private createUserAgent()Ljava/lang/String;
    .locals 1

    .line 211
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->tryAndroidUserAgent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->getJVMUserAgent()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private ensureEventTarget()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/firebase/client/core/Context;->eventTarget:Lcom/firebase/client/EventTarget;

    if-nez v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->createEventTarget()Lcom/firebase/client/EventTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/Context;->eventTarget:Lcom/firebase/client/EventTarget;

    :cond_0
    return-void
.end method

.method private ensureLogger()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/firebase/client/core/Context;->logger:Lcom/firebase/client/Logger;

    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->createLogger()Lcom/firebase/client/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/Context;->logger:Lcom/firebase/client/Logger;

    :cond_0
    return-void
.end method

.method private ensureRunLoop()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/firebase/client/core/Context;->runLoop:Lcom/firebase/client/RunLoop;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/firebase/client/utilities/DefaultRunLoop;

    invoke-direct {v0, p0}, Lcom/firebase/client/utilities/DefaultRunLoop;-><init>(Lcom/firebase/client/core/Context;)V

    iput-object v0, p0, Lcom/firebase/client/core/Context;->runLoop:Lcom/firebase/client/RunLoop;

    :cond_0
    return-void
.end method

.method private ensureUserAgent()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/firebase/client/core/Context;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->createUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/Context;->userAgent:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private getJVMUserAgent()Ljava/lang/String;
    .locals 3

    const-string v0, "java.vm.name"

    const-string v1, "Unknown JVM"

    .line 241
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.specification.version"

    const-string v2, "Unknown"

    .line 242
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-direct {p0, v1, v0}, Lcom/firebase/client/core/Context;->buildUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tryAndroidHandler()Lcom/firebase/client/EventTarget;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    const-string v0, "Error creating Android event target"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.os.Environment"

    .line 134
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getRootDirectory"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    .line 135
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 136
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 137
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "android.os.Looper"

    .line 139
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getMainLooper"

    new-array v5, v4, [Ljava/lang/Class;

    .line 140
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    .line 141
    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "android.os.Handler"

    .line 142
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v2, v7, v4

    .line 143
    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const-string v7, "post"

    new-array v8, v6, [Ljava/lang/Class;

    .line 144
    const-class v9, Ljava/lang/Runnable;

    aput-object v9, v8, v4

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v4

    .line 145
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 146
    new-instance v3, Lcom/firebase/client/core/Context$1;

    invoke-direct {v3, p0, v5, v2}, Lcom/firebase/client/core/Context$1;-><init>(Lcom/firebase/client/core/Context;Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    .line 176
    new-instance v2, Lcom/firebase/client/FirebaseException;

    invoke-direct {v2, v0, v1}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 174
    new-instance v2, Lcom/firebase/client/FirebaseException;

    invoke-direct {v2, v0, v1}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v1

    .line 172
    new-instance v2, Lcom/firebase/client/FirebaseException;

    invoke-direct {v2, v0, v1}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v1

    .line 170
    new-instance v2, Lcom/firebase/client/FirebaseException;

    invoke-direct {v2, v0, v1}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_4
    return-object v1
.end method

.method private tryAndroidLogger()Lcom/firebase/client/Logger;
    .locals 3

    .line 106
    :try_start_0
    new-instance v0, Lcom/firebase/client/utilities/AndroidLogger;

    iget-object v1, p0, Lcom/firebase/client/core/Context;->logLevel:Lcom/firebase/client/Logger$Level;

    iget-object v2, p0, Lcom/firebase/client/core/Context;->loggedComponents:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/utilities/AndroidLogger;-><init>(Lcom/firebase/client/Logger$Level;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 116
    new-instance v1, Lcom/firebase/client/FirebaseException;

    const-string v2, "Error creating Android logger"

    invoke-direct {v1, v2, v0}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private tryAndroidUserAgent()Ljava/lang/String;
    .locals 4

    const-string v0, "Error building Android User-Agent"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.os.Build$VERSION"

    .line 220
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "SDK_INT"

    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 222
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Android"

    .line 224
    invoke-direct {p0, v2, v3}, Lcom/firebase/client/core/Context;->buildUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 236
    new-instance v2, Lcom/firebase/client/FirebaseException;

    invoke-direct {v2, v0, v1}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 234
    new-instance v2, Lcom/firebase/client/FirebaseException;

    invoke-direct {v2, v0, v1}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    return-object v1
.end method

.method private tryJVMThreadPool()Lcom/firebase/client/EventTarget;
    .locals 9

    .line 182
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 183
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/firebase/client/core/Context$2;

    invoke-direct {v7, p0}, Lcom/firebase/client/core/Context$2;-><init>(Lcom/firebase/client/core/Context;)V

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, v8

    move v1, v2

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 196
    new-instance v0, Lcom/firebase/client/core/Context$3;

    invoke-direct {v0, p0, v8}, Lcom/firebase/client/core/Context$3;-><init>(Lcom/firebase/client/core/Context;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-object v0
.end method


# virtual methods
.method protected assertUnfrozen()V
    .locals 2

    .line 49
    invoke-virtual {p0}, Lcom/firebase/client/core/Context;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    new-instance v0, Lcom/firebase/client/FirebaseException;

    const-string v1, "Modifications to Config objects must occur before they are in use"

    invoke-direct {v0, v1}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method freeze()V
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/firebase/client/core/Context;->frozen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/firebase/client/core/Context;->frozen:Z

    .line 40
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->ensureLogger()V

    .line 41
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->ensureUserAgent()V

    .line 43
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->ensureEventTarget()V

    .line 44
    invoke-direct {p0}, Lcom/firebase/client/core/Context;->ensureRunLoop()V

    :cond_0
    return-void
.end method

.method public getEventTarget()Lcom/firebase/client/EventTarget;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/firebase/client/core/Context;->eventTarget:Lcom/firebase/client/EventTarget;

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;
    .locals 2

    .line 55
    new-instance v0, Lcom/firebase/client/utilities/LogWrapper;

    iget-object v1, p0, Lcom/firebase/client/core/Context;->logger:Lcom/firebase/client/Logger;

    invoke-direct {v0, v1, p1}, Lcom/firebase/client/utilities/LogWrapper;-><init>(Lcom/firebase/client/Logger;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;
    .locals 2

    .line 59
    new-instance v0, Lcom/firebase/client/utilities/LogWrapper;

    iget-object v1, p0, Lcom/firebase/client/core/Context;->logger:Lcom/firebase/client/Logger;

    invoke-direct {v0, v1, p1, p2}, Lcom/firebase/client/utilities/LogWrapper;-><init>(Lcom/firebase/client/Logger;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getRunLoop()Lcom/firebase/client/RunLoop;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/firebase/client/core/Context;->runLoop:Lcom/firebase/client/RunLoop;

    return-object v0
.end method

.method getStorage()Lcom/firebase/client/PersistentStorage;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/firebase/client/core/Context;->storage:Lcom/firebase/client/PersistentStorage;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/firebase/client/core/Context;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isFrozen()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/firebase/client/core/Context;->frozen:Z

    return v0
.end method
