.class public Lpl/mkrstudio/truefootball3/objects/NationalTeams$PlayerSkillComparator;
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
    name = "PlayerSkillComparator"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    .line 762
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 763
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Player;

    const/4 v0, 0x0

    if-nez p1, :cond_9

    const/4 v1, 0x0

    goto :goto_d

    .line 764
    :cond_9
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v1

    :goto_d
    if-nez p2, :cond_10

    goto :goto_14

    .line 765
    :cond_10
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v0

    :goto_14
    if-eq v1, v0, :cond_18

    sub-int/2addr v0, v1

    return v0

    :cond_18
    const/16 v0, 0x63

    if-nez p1, :cond_1f

    const/16 p1, 0x63

    goto :goto_23

    .line 769
    :cond_1f
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result p1

    :goto_23
    if-nez p2, :cond_26

    goto :goto_2a

    .line 770
    :cond_26
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v0

    :goto_2a
    sub-int/2addr p1, v0

    return p1
.end method
