.class Lpl/mkrstudio/truefootball3/activities/MatchActivity$15;
.super Ljava/lang/Object;
.source "MatchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/MatchActivity;->penalties()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

.field final synthetic val$j:I


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$j"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1019
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$15;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iput p2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$15;->val$j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1021
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$15;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    const v1, 0x7f0c02c4

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    .line 1032
    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$15;->val$j:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1033
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$15;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-byte v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homePenGoalsDelayed:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homePenGoalsDelayed:B

    goto :goto_0

    .line 1035
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$15;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-byte v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayPenGoalsDelayed:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayPenGoalsDelayed:B

    .line 1038
    :goto_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$15;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->updatePenaltiesResult()V

    return-void
.end method
