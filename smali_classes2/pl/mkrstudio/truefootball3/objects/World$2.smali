.class Lpl/mkrstudio/truefootball3/objects/World$2;
.super Ljava/lang/Object;
.source "World.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/objects/World;->order(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/objects/World;

.field final synthetic val$finalRandomOrder:[D

.field final synthetic val$orderCopy:Ljava/util/List;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/objects/World;Ljava/util/List;[D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$orderCopy",
            "val$finalRandomOrder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1932
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/World$2;->this$0:Lpl/mkrstudio/truefootball3/objects/World;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/World$2;->val$orderCopy:Ljava/util/List;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/objects/World$2;->val$finalRandomOrder:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
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

    .line 1934
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1935
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 1936
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/World$2;->val$orderCopy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1937
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/World$2;->val$orderCopy:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 1938
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/World$2;->val$finalRandomOrder:[D

    aget-wide v1, v0, p1

    aget-wide v3, v0, p2

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1940
    :cond_0
    aget-wide v1, v0, p1

    aget-wide p1, v0, p2

    cmpg-double v0, v1, p1

    if-gez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
