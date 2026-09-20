.class Lpl/mkrstudio/truefootball3/objects/NationalTeams$PlayerSkillComparator;
.super Ljava/lang/Object;
.source "NationalTeams.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mkrstudio/truefootball3/objects/NationalTeams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayerSkillComparator"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Player;

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result p2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method
