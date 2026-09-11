.class Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$7;
.super Ljava/lang/Object;
.source "EditPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$7;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

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

    .line 186
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$7;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

    iget-boolean p1, p1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->edit:Z

    if-nez p1, :cond_0

    .line 187
    sget-object p1, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->customPlayers:Ljava/util/List;

    sget-object v0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->customPlayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 188
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$7;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->finish()V

    return-void
.end method
