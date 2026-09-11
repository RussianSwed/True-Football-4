.class public Lcom/firebase/simplelogin/User;
.super Ljava/lang/Object;
.source "User.java"


# instance fields
.field private authToken:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private provider:Lcom/firebase/simplelogin/enums/Provider;

.field private thirdPartyUserData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/firebase/simplelogin/enums/Provider;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/firebase/simplelogin/enums/Provider;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/firebase/simplelogin/User;->userId:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/firebase/simplelogin/User;->provider:Lcom/firebase/simplelogin/enums/Provider;

    .line 56
    iput-object p3, p0, Lcom/firebase/simplelogin/User;->authToken:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/firebase/simplelogin/User;->thirdPartyUserData:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/firebase/simplelogin/User;->userId:Ljava/lang/String;

    .line 38
    sget-object p1, Lcom/firebase/simplelogin/enums/Provider;->PASSWORD:Lcom/firebase/simplelogin/enums/Provider;

    iput-object p1, p0, Lcom/firebase/simplelogin/User;->provider:Lcom/firebase/simplelogin/enums/Provider;

    .line 39
    iput-object p2, p0, Lcom/firebase/simplelogin/User;->authToken:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/firebase/simplelogin/User;->email:Ljava/lang/String;

    .line 41
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/firebase/simplelogin/User;->thirdPartyUserData:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/firebase/simplelogin/User;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/firebase/simplelogin/User;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Lcom/firebase/simplelogin/enums/Provider;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/firebase/simplelogin/User;->provider:Lcom/firebase/simplelogin/enums/Provider;

    return-object v0
.end method

.method public getThirdPartyUserData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/firebase/simplelogin/User;->thirdPartyUserData:Ljava/util/Map;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/firebase/simplelogin/User;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/firebase/simplelogin/User;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/firebase/simplelogin/User;->getProvider()Lcom/firebase/simplelogin/enums/Provider;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
