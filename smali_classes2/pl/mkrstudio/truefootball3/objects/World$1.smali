.class Lpl/mkrstudio/truefootball3/objects/World$1;
.super Ljava/lang/Object;
.source "World.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/objects/World;->getSortedTeamsForCountry(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Competitions;Landroid/content/Context;IILpl/mkrstudio/truefootball3/objects/EditedData;Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/objects/World;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/objects/World;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 690
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/World$1;->this$0:Lpl/mkrstudio/truefootball3/objects/World;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o1",
            "o2"
        }
    .end annotation

    .line 692
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 693
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 694
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLastPlace()B

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLastPlace()B

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    .line 696
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLastPlace()B

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLastPlace()B

    move-result v1

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    .line 699
    :cond_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    return v2

    .line 701
    :cond_2
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    return v3

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
