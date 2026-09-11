.class Lpl/mkrstudio/truefootball3/activities/MatchActivity$10;
.super Ljava/lang/Object;
.source "MatchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mkrstudio/truefootball3/activities/MatchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 899
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$10;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 901
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$10;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->runOneMinute()V

    return-void
.end method
