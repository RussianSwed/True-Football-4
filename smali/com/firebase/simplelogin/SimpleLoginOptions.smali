.class public Lcom/firebase/simplelogin/SimpleLoginOptions;
.super Ljava/lang/Object;
.source "SimpleLoginOptions.java"


# instance fields
.field private debug:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/firebase/simplelogin/SimpleLoginOptions;->debug:Z

    return-void
.end method


# virtual methods
.method public isDebug()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/firebase/simplelogin/SimpleLoginOptions;->debug:Z

    return v0
.end method

.method public setDebug(Z)Lcom/firebase/simplelogin/SimpleLoginOptions;
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/firebase/simplelogin/SimpleLoginOptions;->debug:Z

    return-object p0
.end method
