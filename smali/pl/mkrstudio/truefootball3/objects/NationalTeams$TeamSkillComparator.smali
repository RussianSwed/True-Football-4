.class Lpl/mkrstudio/truefootball3/objects/NationalTeams$TeamSkillComparator;
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
    name = "TeamSkillComparator"
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

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Team;

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result p2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method
