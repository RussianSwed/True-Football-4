.class public Lpl/mkrstudio/truefootball3/objects/NationalTeams$TeamSkillComparator;
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
    name = "TeamSkillComparator"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 778
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 779
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Team;

    const/4 v0, 0x0

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_d

    .line 780
    :cond_9
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result p1

    :goto_d
    if-nez p2, :cond_10

    goto :goto_14

    .line 781
    :cond_10
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v0

    :goto_14
    cmpg-float p2, p1, v0

    if-gez p2, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    cmpl-float p1, p1, v0

    if-lez p1, :cond_20

    const/4 p1, -0x1

    return p1

    :cond_20
    const/4 p1, 0x0

    return p1
.end method
