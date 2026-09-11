.class public Lcom/firebase/client/utilities/LogWrapper;
.super Ljava/lang/Object;
.source "LogWrapper.java"


# instance fields
.field private component:Ljava/lang/String;

.field private logger:Lcom/firebase/client/Logger;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/firebase/client/Logger;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/firebase/client/utilities/LogWrapper;-><init>(Lcom/firebase/client/Logger;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/firebase/client/Logger;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/firebase/client/utilities/LogWrapper;->logger:Lcom/firebase/client/Logger;

    .line 32
    iput-object p2, p0, Lcom/firebase/client/utilities/LogWrapper;->component:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/firebase/client/utilities/LogWrapper;->prefix:Ljava/lang/String;

    return-void
.end method

.method private static exceptionStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 17
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 19
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private now()J
    .locals 2

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private toLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/firebase/client/utilities/LogWrapper;->prefix:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/firebase/client/utilities/LogWrapper;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 6

    .line 46
    iget-object v0, p0, Lcom/firebase/client/utilities/LogWrapper;->logger:Lcom/firebase/client/Logger;

    sget-object v1, Lcom/firebase/client/Logger$Level;->DEBUG:Lcom/firebase/client/Logger$Level;

    iget-object v2, p0, Lcom/firebase/client/utilities/LogWrapper;->component:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/firebase/client/utilities/LogWrapper;->toLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/firebase/client/utilities/LogWrapper;->now()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/firebase/client/Logger;->onLogMessage(Lcom/firebase/client/Logger$Level;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/firebase/client/utilities/LogWrapper;->toLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/firebase/client/utilities/LogWrapper;->exceptionStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 38
    iget-object v1, p0, Lcom/firebase/client/utilities/LogWrapper;->logger:Lcom/firebase/client/Logger;

    sget-object v2, Lcom/firebase/client/Logger$Level;->ERROR:Lcom/firebase/client/Logger$Level;

    iget-object v3, p0, Lcom/firebase/client/utilities/LogWrapper;->component:Ljava/lang/String;

    invoke-direct {p0}, Lcom/firebase/client/utilities/LogWrapper;->now()J

    move-result-wide v5

    invoke-interface/range {v1 .. v6}, Lcom/firebase/client/Logger;->onLogMessage(Lcom/firebase/client/Logger$Level;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 6

    .line 42
    iget-object v0, p0, Lcom/firebase/client/utilities/LogWrapper;->logger:Lcom/firebase/client/Logger;

    sget-object v1, Lcom/firebase/client/Logger$Level;->INFO:Lcom/firebase/client/Logger$Level;

    iget-object v2, p0, Lcom/firebase/client/utilities/LogWrapper;->component:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/firebase/client/utilities/LogWrapper;->toLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/firebase/client/utilities/LogWrapper;->now()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/firebase/client/Logger;->onLogMessage(Lcom/firebase/client/Logger$Level;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
