.class public Lpl/mkrstudio/truefootball3/objects/UserCompetition;
.super Ljava/lang/Object;
.source "UserCompetition.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x698ed8f1defe258aL


# instance fields
.field userApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation
.end field

.field userScorers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation
.end field

.field userAssistants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserCompetition;->userScorers:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserCompetition;->userApps:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserCompetition;->userAssistants:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getUserApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserCompetition;->userApps:Ljava/util/List;

    return-object v0
.end method

.method public getUserScorers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserCompetition;->userScorers:Ljava/util/List;

    return-object v0
.end method

.method public setUserApps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userApps"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserCompetition;->userApps:Ljava/util/List;

    return-void
.end method

.method public setUserScorers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userScorers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserCompetition;->userScorers:Ljava/util/List;

    return-void
.end method

.method public getUserAssistants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserCompetition;->userAssistants:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserCompetition;->userAssistants:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/UserCompetition;->userAssistants:Ljava/util/List;

    return-object v0
.end method

.method public setUserAssistants(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/UserCompetition;->userAssistants:Ljava/util/List;

    return-void
.end method
