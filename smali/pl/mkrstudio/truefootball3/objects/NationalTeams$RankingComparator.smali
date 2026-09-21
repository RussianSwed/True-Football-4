.class public Lpl/mkrstudio/truefootball3/objects/NationalTeams$RankingComparator;
.super Ljava/lang/Object;
.source "NationalTeams.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mkrstudio/truefootball3/objects/NationalTeams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RankingComparator"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6

    .line 795
    instance-of v0, p1, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    goto :goto_9

    :cond_8
    move-object p1, v1

    .line 796
    :goto_9
    instance-of v0, p2, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    if-eqz v0, :cond_10

    move-object v1, p2

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/NationalTeam;

    :cond_10
    const/4 p2, 0x0

    if-nez p1, :cond_15

    const/4 v0, 0x0

    goto :goto_19

    .line 797
    :cond_15
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->getRankingPoints()I

    move-result v0

    :goto_19
    if-nez v1, :cond_1c

    goto :goto_20

    .line 798
    :cond_1c
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->getRankingPoints()I

    move-result p2

    :goto_20
    if-eq v0, p2, :cond_24

    sub-int/2addr p2, v0

    return p2

    :cond_24
    const/4 p2, 0x0

    if-nez p1, :cond_29

    const/4 v0, 0x0

    goto :goto_2d

    .line 802
    :cond_29
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->getSkill()F

    move-result v0

    :goto_2d
    if-nez v1, :cond_30

    goto :goto_34

    .line 803
    :cond_30
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->getSkill()F

    move-result p2

    :goto_34
    cmpg-float v2, v0, p2

    if-gez v2, :cond_3a

    const/4 p1, 0x1

    return p1

    :cond_3a
    cmpl-float p2, v0, p2

    if-lez p2, :cond_40

    const/4 p1, -0x1

    return p1

    .line 810
    :cond_40
    const-string p2, ""

    if-eqz p1, :cond_50

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4b

    goto :goto_50

    :cond_4b
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    goto :goto_51

    :cond_50
    :goto_50
    move-object p1, p2

    :goto_51
    if-eqz v1, :cond_5e

    .line 811
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5a

    goto :goto_5e

    :cond_5a
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/NationalTeam;->getCountryCode()Ljava/lang/String;

    move-result-object p2

    .line 812
    :cond_5e
    :goto_5e
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
