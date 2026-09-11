.class Lpl/mkrstudio/truefootball3/fragments/SquadFragment$5;
.super Ljava/lang/Object;
.source "SquadFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->sort(Lpl/mkrstudio/truefootball3/enums/SortType;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

.field final synthetic val$sortType:Lpl/mkrstudio/truefootball3/enums/SortType;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/SquadFragment;Lpl/mkrstudio/truefootball3/enums/SortType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$sortType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 429
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$5;->val$sortType:Lpl/mkrstudio/truefootball3/enums/SortType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
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

    .line 431
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 432
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 433
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$5;->val$sortType:Lpl/mkrstudio/truefootball3/enums/SortType;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SortType;->BY_SELECTION:Lpl/mkrstudio/truefootball3/enums/SortType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v0, v1, :cond_5

    .line 434
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v0

    if-eq v0, v4, :cond_0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v0

    if-eq v0, v4, :cond_0

    return v2

    .line 436
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v0

    if-eq v0, v4, :cond_1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v0

    if-eq v0, v4, :cond_1

    return v4

    .line 438
    :cond_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v0

    if-eq v0, v4, :cond_2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v0

    if-eq v0, v4, :cond_2

    return v3

    .line 440
    :cond_2
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v0

    if-ne v0, v4, :cond_3

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v0

    if-eq v0, v4, :cond_3

    return v2

    .line 442
    :cond_3
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result p2

    if-ne p2, v4, :cond_4

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result p1

    if-eq p1, v4, :cond_4

    return v4

    :cond_4
    return v3

    .line 446
    :cond_5
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$5;->val$sortType:Lpl/mkrstudio/truefootball3/enums/SortType;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SortType;->BY_POSITION:Lpl/mkrstudio/truefootball3/enums/SortType;

    if-ne v0, v1, :cond_7

    .line 447
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/enums/Position;->ordinal()I

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/enums/Position;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_6

    return v2

    .line 449
    :cond_6
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/enums/Position;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/enums/Position;->ordinal()I

    move-result p2

    if-ge p1, p2, :cond_7

    return v4

    :cond_7
    return v3
.end method
