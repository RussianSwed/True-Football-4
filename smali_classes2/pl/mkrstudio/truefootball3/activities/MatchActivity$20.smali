.class Lpl/mkrstudio/truefootball3/activities/MatchActivity$20;
.super Ljava/lang/Object;
.source "MatchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/MatchActivity;->playerSubs()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

.field final synthetic val$inCommentaries:[Ljava/lang/String;

.field final synthetic val$j:I


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;[Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$inCommentaries",
            "val$j"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1495
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$20;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$20;->val$inCommentaries:[Ljava/lang/String;

    iput p3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$20;->val$j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1497
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 1498
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$20;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsToAnnounce:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1499
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$20;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$20;->val$inCommentaries:[Ljava/lang/String;

    array-length v4, v3

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v3, v0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$20;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v5, v5, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsToAnnounce:Ljava/util/List;

    iget v6, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$20;->val$j:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v2

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    .line 1501
    :cond_0
    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$20;->val$j:I

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$20;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsToAnnounce:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 1502
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$20;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsToAnnounce:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method
