.class Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment$2;
.super Ljava/lang/Object;
.source "HallOfTrophiesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 81
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;

    iget v0, p1, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->shownTrophyPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->shownTrophyPosition:I

    .line 82
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;

    iget p1, p1, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->shownTrophyPosition:I

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTrophies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 83
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;

    const/4 v0, 0x0

    iput v0, p1, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->shownTrophyPosition:I

    .line 84
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;

    invoke-static {p1}, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->access$000(Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;)V

    return-void
.end method
