.class Lpl/mkrstudio/truefootball3/activities/MatchActivity$19;
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

.field final synthetic val$j:I

.field final synthetic val$outCommentaries:[Ljava/lang/String;


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
            "val$outCommentaries",
            "val$j"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1487
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$19;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$19;->val$outCommentaries:[Ljava/lang/String;

    iput p3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$19;->val$j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1489
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 1490
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$19;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsToAnnounce:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1491
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$19;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$19;->val$outCommentaries:[Ljava/lang/String;

    array-length v3, v2

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v2, v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$19;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsToAnnounce:Ljava/util/List;

    iget v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$19;->val$j:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
