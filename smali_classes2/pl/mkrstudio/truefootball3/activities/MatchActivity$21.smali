.class Lpl/mkrstudio/truefootball3/activities/MatchActivity$21;
.super Ljava/lang/Object;
.source "MatchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/MatchActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2140
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$21;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$21;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 2143
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$21;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2144
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$21;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-boolean p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->home:Z

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eqz p1, :cond_0

    .line 2148
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$21;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Match;->setHomeGoals(B)V

    .line 2149
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$21;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {p1, v1}, Lpl/mkrstudio/truefootball3/objects/Match;->setAwayGoals(B)V

    goto :goto_0

    .line 2154
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$21;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {p1, v1}, Lpl/mkrstudio/truefootball3/objects/Match;->setHomeGoals(B)V

    .line 2155
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$21;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Match;->setAwayGoals(B)V

    .line 2157
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$21;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->pause:Z

    .line 2158
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$21;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->finish()V

    return-void
.end method
